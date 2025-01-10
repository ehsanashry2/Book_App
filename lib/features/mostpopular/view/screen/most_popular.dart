import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/mostpopular/model/book_model.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class ContainerView extends StatelessWidget {
  final List<ContainerModel> models;

  const ContainerView({super.key, required this.models});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Container(
      width: 142,
      height: 231,
      decoration: BoxDecoration(
        color: themeNotifier.continarColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: models.map((model) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(model.imagePath, width: 142, height: 144),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.firstText,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleHelper.font12W400Italic(themeNotifier),),

                    Text(
                      model.secondText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyleHelper.font16W500Primary(themeNotifier),
                      ),

                    Row(
                      children: [
                        Text(model.thirdText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyleHelper.font12W400Scondar(themeNotifier),
                        ),
                        const Spacer(),
                        Text('${model.price}',
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
