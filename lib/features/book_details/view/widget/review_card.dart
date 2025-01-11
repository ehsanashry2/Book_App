import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/book_details/model/review_model.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class ReviewCard extends StatelessWidget {
  final ReviewModel review;

  const ReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    final int fullStars = review.rating.toInt();
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 194,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
        decoration: BoxDecoration(
          color: themeNotifier.continarColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(review.imagePath),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.name,
                        style: TextStyleHelper.font16W500Primary(themeNotifier),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          ...List.generate(
                            fullStars,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    height: 12,
                                 ),
                                ),
                          ),
                          const Spacer(),
                          Text(
                            review.date,
                            style: TextStyleHelper.font14W400primary(themeNotifier),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 8.sp,),
            Text(
              review.description,
              style: TextStyleHelper.font14W400Primary(themeNotifier),
            ),
          ],
        ),
      ),
    );
  }
}

