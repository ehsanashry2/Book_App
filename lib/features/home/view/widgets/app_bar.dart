import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            color: themeNotifier.isDark ? AppColors.darkBackground : AppColors.lightBackground,
            height: 70,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/profile.png',
                  width: 48,
                  height: 48,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Morning,',
                      style: TextStyleHelper.font12W400Primary(themeNotifier),
                    ),

                    Text(
                      'Mahmoud',
                      style: TextStyleHelper.font20W500Primary(themeNotifier)),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/notification.svg',
                    color: themeNotifier.textColor,
                    height: 24,
                    width: 24,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

