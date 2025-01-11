import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 51,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: themeNotifier.textColor,

          ),
        ),
        child:  Center(
          child: Text(
            "Submit",
            style: TextStyleHelper.font16W400text(themeNotifier),
          ),
        ),
      ),
    );
  }
}
