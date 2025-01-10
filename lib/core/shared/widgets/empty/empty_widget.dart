import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:innove_final_project/core/constants/strings/app_strings.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    this.text,
  });
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text ?? AppStrings.noDataFound.tr(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
