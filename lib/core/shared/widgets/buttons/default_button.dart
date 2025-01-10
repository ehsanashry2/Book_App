import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';

class DefaultButton extends StatelessWidget {
  final Function() onPressed;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;

  final Widget? child;
  final double? width;
  const DefaultButton(
      {super.key,
      required this.onPressed,
      this.text,
      this.backgroundColor,
      this.textColor,
      this.child,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        child: AnimatedContainer(
          // padding: EdgeInsets.symmetric(horizontal: 16.w),
          width: width ?? MediaQuery.sizeOf(context).width,
          margin: EdgeInsets.symmetric(
            vertical: 8.r, /* horizontal: 16.r */
          ),
          height: 50,
          curve: Curves.easeInOut,
          alignment: Alignment.center,
          /* padding: EdgeInsets.symmetric(
                            vertical: 8.r, horizontal: 32.r), */
          decoration: BoxDecoration(
              color: backgroundColor ?? Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(24.r)

              /* shape: state is RegisterLoading
                              ? BoxShape.circle
                              : null, */
              ),
          duration: const Duration(seconds: 1),
          child: child ??
              Text(text!,
                  style: TextStyleHelper.dummy
                      .copyWith(color: textColor ?? Colors.white)),
        ),
      ),
    );
  }
}
