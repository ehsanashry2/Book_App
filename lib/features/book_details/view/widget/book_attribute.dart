import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/book_details/model/book_attribute_model.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';


class BookAttributesRow extends StatelessWidget {
  const BookAttributesRow({super.key});

  @override
  Widget build(BuildContext context) {
    final attributes = [
      BookAttributeModel(name: 'Rating', value: '4.7'),
      BookAttributeModel(name: 'Pages', value: '395'),
      BookAttributeModel(name: 'Language', value: 'EN'),
      BookAttributeModel(name: 'Likes', value: '23.5k'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: attributes.asMap().entries.map((entry) {
        final isLast = entry.key == attributes.length - 1;
        return Expanded(
          child: Row(
            children: [
              Expanded(
                child: BookAttributeColumn(attribute: entry.value),
              ),
              if (!isLast)
                Container(
                  width: 1,
                  height: 41,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  color: Provider.of<ThemeNotifier>(context).textColor2,
                ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class BookAttributeColumn extends StatelessWidget {
  final BookAttributeModel attribute;

  const BookAttributeColumn({super.key, required this.attribute});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          attribute.name,
          style: TextStyleHelper.font12W400Primary(themeNotifier),
        ),
        const SizedBox(height: 8),
        Text(
          attribute.value,
          style: TextStyleHelper.font16W700Primary(themeNotifier),
        ),
      ],
    );
  }
}
