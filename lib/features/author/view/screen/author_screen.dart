import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/author/model/author_model.dart';
import 'package:innove_final_project/features/author/view/screen/auther_card.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class ExploreAuthorsSection extends StatelessWidget {
  final List<Author> authors = [
    Author(imageUrl: 'assets/images/authors1.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors2.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors3.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors1.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors2.png', name: 'Author Name'),
    Author(imageUrl: 'assets/images/authors3.png', name: 'Author Name'),
  ];

   ExploreAuthorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore Authors",
                style: TextStyleHelper.font24W700Primary(themeNotifier),
              ),
              Row(
                children: [
                  Text(
                    "See All",
                    style: TextStyleHelper.font16W500underline(themeNotifier),
                  ),
                  const SizedBox(width: 4,),
                  SvgPicture.asset(
                    'assets/icons/arrow_forward.svg',
                    width: 20,
                    height: 20,
                    color: themeNotifier.textColor,
                  ),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(height: 18),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left:16),
            child: Row(
              children: List.generate(authors.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 34.0),
                  child: AuthorCard(
                    imageUrl: authors[index].imageUrl,
                    name: authors[index].name,
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
