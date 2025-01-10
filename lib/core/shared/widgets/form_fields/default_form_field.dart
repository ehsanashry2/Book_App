import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:innove_final_project/core/theme/assets/app_icons.dart';
import 'package:innove_final_project/core/theme/text_styles/text_style_helper.dart';

class DefaultFormField extends StatefulWidget {
  final String? hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool isAuth;
  final Color? fillColor;
  final String icon;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final Widget? iconWidget;
  final Color? hintColor;
  const DefaultFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.isPassword = false,
    required this.controller,
    this.icon = '',
    this.validator,
    this.isAuth = true,
    this.fillColor,
    this.iconWidget,
    this.hintColor,
  });

  @override
  State<DefaultFormField> createState() => _DefaultFormFieldState();
}

class _DefaultFormFieldState extends State<DefaultFormField> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      textInputAction: TextInputAction.next,
      obscureText: widget.isPassword ? passwordVisible : false,
      controller: widget.controller,
      enabled: true,
      style: TextStyleHelper.dummy.copyWith(
          height: 1.1.h,
          fontWeight: FontWeight
              .normal) /* TextStyle(
        height: 1.1.h,
        fontSize: 16.sp,
      ) */
      ,
      decoration: InputDecoration(
        errorStyle: TextStyleHelper.dummy,
        fillColor: widget.fillColor ?? Colors.white,
        filled: true,
        suffixIcon: widget.isAuth
            ? widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    icon: passwordVisible
                        ? SvgPicture.asset(
                            AppIcons.invisiblePassword,
                            height: 20.h,
                          )
                        : SvgPicture.asset(
                            AppIcons.visiblePassword,
                            height: 20.h,
                          ),
                  )
                : const SizedBox()
            : Padding(
                padding: EdgeInsets.all(12.0.r),
                child: widget.iconWidget,
              ),
        prefixIcon: widget.isAuth
            ? Padding(
                padding: EdgeInsets.all(12.0.r),
                child: SvgPicture.asset(
                  widget.icon,
                  height: 20.h,
                ),
              )
            : null,
        hintStyle: TextStyleHelper.dummy.copyWith(
            color: widget.hintColor ?? Colors.grey,
            fontWeight: FontWeight.normal),
        hintText: widget.hintText,
        border: OutlineInputBorder(
          /* borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.green,
          ), */
          borderRadius: BorderRadius.all(
            Radius.circular(16.0.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16.0.r),
          ),
        ),
      ),
    );
  }
}
