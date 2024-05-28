import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;

  const MainButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 5.h),
      child: SizedBox(
        height: 55.h,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.mainBlue,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 14.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: AppText.whiteSemi16,
          ),
        ),
      ),
    );
  }
}
