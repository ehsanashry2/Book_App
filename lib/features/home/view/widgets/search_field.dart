import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: themeNotifier.borderColor,
            width: 1,
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Book, author name",
            hintStyle: TextStyleHelper.font14W400Scondor(themeNotifier),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 18, right: 7),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 24,
                height: 24,
                color: themeNotifier.borderColor,
              ),
            ),
           border: InputBorder.none,
           focusedBorder: InputBorder.none,
          ),
          style: TextStyle(fontSize: 16, color: themeNotifier.textColor), // Set text color
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }
}
