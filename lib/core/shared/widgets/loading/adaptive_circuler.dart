import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';

class AdaptiveCircularProgress extends StatelessWidget {
  const AdaptiveCircularProgress({
    super.key,
    this.backgroundColor,
  });
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CircularProgressIndicator.adaptive(
        backgroundColor: backgroundColor ?? AppColors.white,
        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.percentage),
      ),
    );
  }
}
