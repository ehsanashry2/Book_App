import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/route/routes.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:provider/provider.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';

class OnboardingScreen extends StatefulWidget {
  final VoidCallback onThemeToggle;

  const OnboardingScreen({super.key, required this.onThemeToggle});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      backgroundColor: themeNotifier.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 120),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.wb_sunny,
                      color: themeNotifier.textColor,
                    ),
                    Switch(
                      value: themeNotifier.isDark,
                      onChanged: (value) {
                        themeNotifier.toggleTheme();
                        widget.onThemeToggle();
                      },
                      activeColor: themeNotifier.textColor,
                      inactiveThumbColor: themeNotifier.textColor,
                      inactiveTrackColor: themeNotifier.backgroundColor,
                    ),
                    Icon(
                      Icons.nightlight_round,
                      color: themeNotifier.textColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 375,
                height: 345,
                child: Image.asset(
                  themeNotifier.isDark
                      ? 'assets/images/onboardingdark.png'
                      : 'assets/images/onboardinglight.png',
                ),
              ),
              const SizedBox(height: 60),
              Text(
                "Read Your Favorite Books",
                style: TextStyleHelper.font24W700Primary(themeNotifier),
              ),
              const SizedBox(height: 8),
              Text(
                "We have put together all the books so that you can find and enjoy all the books.",
                textAlign: TextAlign.center,
                style: TextStyleHelper.font16W400Primary(themeNotifier),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: themeNotifier.isDark
                          ? AppColors.lightBackground
                          : AppColors.darkBackground,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: themeNotifier.isDark
                            ? AppColors.lightBackground
                            : AppColors.darkBackground,
                        width: 2,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: themeNotifier.isDark
                            ? AppColors.lightBackground
                            : AppColors.darkBackground,
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 42),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 234,
                      height: 51,
                      padding: const EdgeInsets.only(right: 15),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.buttom_nav);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeNotifier.isDark ? AppColors.lightBackground : AppColors.darkBackground,
                        ),
                        child: Text(
                          "Login / Sign Up",
                          style: TextStyleHelper.font16W500Text(themeNotifier),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 93,
                    height: 51,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                        color: themeNotifier.isDark
                            ? AppColors.lightBackground
                            : AppColors.darkBackground,
                        width: 1,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.buttom_nav);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                        shadowColor: Colors.transparent,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/arrow-right.svg',
                        color: themeNotifier.isDark
                            ? AppColors.lightBackground
                            : AppColors.darkBackground,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
