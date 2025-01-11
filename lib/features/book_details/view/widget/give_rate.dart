import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class GiveARate extends StatefulWidget {
  const GiveARate({super.key});

  @override
  _GiveARateState createState() => _GiveARateState();
}

class _GiveARateState extends State<GiveARate> {
  int selectedRating = 0;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.sp),
          Text(
            "Give a Rate",
            style: TextStyleHelper.font24W700Primary(themeNotifier),
          ),
          SizedBox(height: 8.sp),
          Row(
            children: List.generate(
              5,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedRating = index + 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SvgPicture.asset(
                    selectedRating > index
                        ? 'assets/icons/star.svg'
                        : 'assets/icons/star_outline.svg',
                    height: 18,
                    width: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 24.sp),
        ],
      ),
    );
  }
}
