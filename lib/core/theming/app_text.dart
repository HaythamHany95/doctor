import 'package:doctor/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText {
  static TextStyle blueBold32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.mainBlue,
    fontFamily: 'Inter',
  );
  static TextStyle blueBold24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.mainBlue,
    fontFamily: 'Inter',
  );
  static TextStyle blackMed14 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: 'Inter',
  );
  static TextStyle greyMed14 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGrey,
    fontFamily: 'Inter',
  );
  static TextStyle greyReg12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    fontFamily: 'Inter',
  );
  static TextStyle greyReg14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    fontFamily: 'Inter',
  );

  /// Default TextStyle for `MainButton`'s Text
  static TextStyle whiteSemi16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontFamily: 'Inter',
  );
}
