import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/core/theme/theme_data/dark_theme.dart';
import 'package:innove_final_project/core/theme/theme_data/light_theme.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: TextTheme(bodyMedium: TextStyle(color: AppColors.textDark)),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: const TextTheme(bodyMedium: TextStyle(color: AppColors.textLight)),
  );
}
