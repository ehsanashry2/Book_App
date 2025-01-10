import 'package:flutter/material.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';


class ThemeNotifier extends ChangeNotifier {
  bool isDark = false;
  ThemeMode get themeMode => isDark ? ThemeMode.dark : ThemeMode.light;

  Color get backgroundColor => isDark ? AppColors.darkBackground : AppColors.lightBackground;
  Color get textColor => isDark ? AppColors.textDark : AppColors.textLight;
  Color get borderColor => isDark ? AppColors.borderDark : AppColors.borderLight;
  Color get continarColor => isDark ? AppColors. containercolor : AppColors.textDark;
  Color get textColor2 => isDark ? AppColors.borderDark : AppColors.textsecondary;

  void toggleTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}

