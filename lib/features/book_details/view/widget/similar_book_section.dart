import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/bestseller/screen/book_list.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';

class SimilarBooksSection extends StatelessWidget {
  final ThemeNotifier themeNotifier;

  const SimilarBooksSection({super.key,
    required this.themeNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                "Similar Books",
                style: TextStyleHelper.font24W700Primary(themeNotifier),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "See All",
                    style: TextStyleHelper.font16W500underline(themeNotifier),
                  ),
                  const SizedBox(width: 4),
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
        SizedBox(height: 24.sp,),
        const BookList(),
      ],
    );
  }
}
