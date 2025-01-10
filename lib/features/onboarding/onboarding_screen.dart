import 'package:flutter/material.dart';
import 'package:innove_final_project/core/route/routes.dart';
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
          padding: const EdgeInsets.only(right: 24, left: 24, top: 160),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  themeNotifier.toggleTheme();
                  widget.onThemeToggle();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeNotifier.backgroundColor,
                  foregroundColor: themeNotifier.textColor,
                ),
                child: Text(
                  "Change Theme",
                  style: TextStyleHelper.font16W500(themeNotifier),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.buttom_nav);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeNotifier.backgroundColor,
                  foregroundColor: themeNotifier.textColor,
                ),
                child: Text(
                  "Login / Sign Up",
                  style: TextStyleHelper.font16W500(themeNotifier),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

