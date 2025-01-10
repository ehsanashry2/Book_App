import 'dart:async';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/constants/strings/app_strings.dart';
import 'package:innove_final_project/core/network/api_handler/api_response_code.dart';
import 'package:innove_final_project/core/shared/entity/api_error_entity.dart';
import 'package:innove_final_project/core/shared/widgets/buttons/default_button.dart';
import 'package:innove_final_project/core/shared/widgets/responsive/spacing.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';
import 'package:innove_final_project/core/utils/extensions/extensions.dart';

class Dialogs {
  static showSnackBar({
    String? title,
    required String bodyMessage,
    int status = 1,
    required BuildContext context,
  }) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            bodyMessage,
            // color: AppColors.primary,
          ),
          duration: const Duration(seconds: 3),
          backgroundColor: status == 1 ? AppColors.white : AppColors.white,
        ),
      );

  // //flutter pub add awesome_dialog
  static warningDialog({
    required BuildContext context,
    dynamic Function()? cancelButton,
    required dynamic Function() confirmButton,
    String? title,
    String? desc,
    bool? dismissOnBackKeyPress,
    bool? dismissOnTouchOutside,
    DialogType? dialogType,
    Widget? body,
  }) =>
      AwesomeDialog(
        context: context,
        dialogType: dialogType ?? DialogType.error,
        animType: AnimType.bottomSlide,
        body: body,
        title: title ?? 'Title',
        desc: desc ?? 'do you want to confirm',
        btnCancelOnPress: cancelButton,
        btnOkOnPress: confirmButton,
        dismissOnBackKeyPress: dismissOnBackKeyPress ?? true,
        dismissOnTouchOutside: dismissOnTouchOutside ?? true,
      ).show();
  static errorDialog({
    required BuildContext context,
    required final ApiErrorEntity error,
  }) {
    if (error.code == ResponseCode.unAuthorized) {
      Future.delayed(const Duration(seconds: 3), () async {
        // final isUser = await isUserLoggedIn();
        // if (isUser) {
        //   logout(context);
        // }
      });
    }
    return AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      animType: AnimType.scale,
      dialogBackgroundColor: AppColors.white,
      borderSide: const BorderSide(color: AppColors.grey),
      padding: EdgeInsets.zero,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppStrings.wrong.tr(), //  error.message,
              style: TextStyleHelper.dummy,
              textAlign: TextAlign.start,
            ),
            vSpace(20),
            if (error.errors != null && error.errors!.isNotEmpty)
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    error.errors!.length,
                    (index) => Text(
                      '- ${error.errors![index]}',
                      style: TextStyleHelper.dummy,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
            vSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DefaultButton(
                  width: 100.h,
                  text: 'Got it!'.tr(),
                  backgroundColor: AppColors.white,
                  textColor: AppColors.percentage,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ],
            ),
            vSpace(10),
          ],
        ),
      ),
    ).show();
  }

 /*  static successDialog(
    BuildContext context, {
    void Function()? callback,
    FutureOr Function(void)? onSuccessFinishedCallback,
  }) {
    const int milliseconds = 1150;

    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: AppColors.transparent,
      builder: (dialogContext) {
        Timer(
            const Duration(milliseconds: milliseconds),
            callback ??
                () async {
                  await SoundHelper.successSound().then(
                      onSuccessFinishedCallback ?? (_) => dialogContext.pop());
                });
        Timer(
            const Duration(milliseconds: milliseconds - 50),
            callback ??
                () async {
                  await HapticsHelper.vibrate(HapticsType.success);
                });
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Lottie.asset(
            AssetsLottie.checkSuccess,
            fit: BoxFit.contain,
            repeat: false,
            height: MediaQuery.sizeOf(context).height / 4,
            width: MediaQuery.sizeOf(context).width / 4,
          ),
        );
      },
    );
  }
 */}
