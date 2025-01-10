import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/features/onboarding/theme_notifier.dart';
class TextStyleHelper {
  static TextStyle dummy = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.primaryColor,
  );


  //_______________________________12________________________________//
  static TextStyle font12W400Italic(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor2,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.italic,
    );
  }
  static TextStyle font12W500Sconder(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor2,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.italic,
    );
  }
  static TextStyle font12W400Primary(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.isDark
          ? AppColors.lightBackground
          : AppColors.darkBackground,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.normal,
    );
  }
  static TextStyle font12W400Scondar(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.normal,
    );
  }
  static TextStyle font12W700Primary(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.normal,
    );
  }

  //_______________________________14________________________________//
  static TextStyle font14W400Primary(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.normal,
    );
  }
  static TextStyle font14W400Scondor(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.borderColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.normal,
    );
  }


  //_______________________________16________________________________//
  static TextStyle font16W400Primary(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.isDark
          ? AppColors.lightBackground
          : AppColors.darkBackground,
      fontSize: 16,
      fontFamily: 'Neue Montreal',
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle font16W500Primary(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle font16W500(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
  //_______________________________20________________________________//
  static TextStyle font20W500Primary(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.normal,
    );
  }

  //_______________________________24________________________________//
  static TextStyle font24W700Primary(ThemeNotifier themeNotifier) {
    return TextStyle(
      color: themeNotifier.textColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: 'Neue Montreal',
      fontStyle: FontStyle.normal,
    );
  }
}




