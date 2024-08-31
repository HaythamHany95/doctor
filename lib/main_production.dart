import 'package:doctor/core/di/dependency_injection.dart';
import 'package:doctor/core/routing/app_router.dart';
import 'package:doctor/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // To fix the bug of text being hidden in flutter_screenutil in the release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DoctorApp(appRouter: AppRouter()));
}
