
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/constants/strings/app_strings.dart';
import 'package:innove_final_project/core/network/api_handler/api_response_code.dart';
import 'package:innove_final_project/core/shared/entity/api_error_entity.dart';
import 'package:innove_final_project/core/shared/widgets/buttons/default_button.dart';
import 'package:innove_final_project/core/shared/widgets/responsive/spacing.dart';
import 'package:innove_final_project/core/theme/assets/app_images.dart';
import 'package:innove_final_project/core/theme/color/app_colors.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';

class ErrorFullScreen extends StatefulWidget {
  const ErrorFullScreen({
    super.key,
    required this.error,
    this.onPressed,
  });
  final ApiErrorEntity error;
  final  Function()? onPressed;

  @override
  State<ErrorFullScreen> createState() => _ErrorFullScreenState();
}

class _ErrorFullScreenState extends State<ErrorFullScreen> {
  @override
  void initState() {
    super.initState();
    HapticFeedback.mediumImpact();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.error.code == ResponseCode.unAuthorized) {
        // logout(context);?
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            widget.error.code == 404
                ? AppImages.error404
                : AppImages.errorImage,
            height: 200.h,
            width: 200.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.error.code.toString(),
                  style: TextStyleHelper.dummy.copyWith(fontSize: 12.sp),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                ),
                vSpace(12),
                Text(
                  widget.error.code == 404
                      ? AppStrings.pageNotFound.tr()
                      : widget.error.message,
                  style: TextStyleHelper.dummy.copyWith(fontSize: 12.sp),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                ),
                vSpace(12),
                if (widget.error.errors != null &&
                    widget.error.errors!.isNotEmpty)
                  for (int i = 0; i < widget.error.errors!.length && i < 4; i++)
                    Text(
                      widget.error.errors![i],
                      style: TextStyleHelper.dummy.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.grey,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 4,
                    ),
              ],
            ),
          ),
          Text(
            AppStrings.weApologizeForTheInconvenicence.tr(),
            style: TextStyleHelper.dummy,
            textAlign: TextAlign.center,
          ),
          vSpace(15),
          DefaultButton(
            text: AppStrings.reloadAgain.tr(),
            onPressed: widget.onPressed!,
            
          )
        ],
      ),
    );
  }
}
