import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final bool? isSecure;
  final TextInputType? keyboardType;

  const AuthTextField({
    required this.hintText,
    this.keyboardType,
    this.isSecure = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 36.h),
      child: Material(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.sp),
        ),
        child: TextFormField(
          maxLines: 1,
          style: AppText.blackMed14,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            // suffixIcon: GestureDetector(),
            hintText: hintText,
            hintStyle: AppText.greyMed14,
            fillColor: AppColors.lighterGrey.withOpacity(0.5),
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
              borderSide: BorderSide(
                color: AppColors.lightGrey.withOpacity(0.5),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.sp),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.sp),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
