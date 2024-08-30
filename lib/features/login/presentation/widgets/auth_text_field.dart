import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final bool? isSecure;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AuthTextField({
    required this.hintText,
    this.keyboardType,
    this.isSecure = false,
    this.suffixIcon,
    this.controller,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 36.h),
      child: TextFormField(
        controller: controller,
        validator: (value) => validator(value),
        maxLines: 1,
        obscureText: isSecure ?? false,
        style: AppText.blackMed14,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          isDense: true,
          hintText: hintText,
          hintStyle: AppText.greyMed14,
          fillColor: AppColors.lighterGrey.withOpacity(0.3),
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(vertical: 17.h, horizontal: 20.w),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.sp),
            borderSide: BorderSide(
              color: AppColors.lightGrey.withOpacity(0.5),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.sp),
            borderSide: const BorderSide(
              width: 1.5,
              color: AppColors.mainBlue,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.sp),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.sp),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
