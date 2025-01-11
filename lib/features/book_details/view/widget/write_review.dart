import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
import 'package:provider/provider.dart';

class WriteReview extends StatelessWidget {
  const WriteReview({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Write a Review",
            style: TextStyleHelper.font24W700Primary(themeNotifier),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height:103,
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Leave review here.....",
                hintStyle: TextStyleHelper.font14W400Scondor(themeNotifier),
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(  color: themeNotifier.borderColor,)
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: themeNotifier.borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: themeNotifier.borderColor),
                ),

                contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
