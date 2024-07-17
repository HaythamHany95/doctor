import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30.w, 94.h, 30.w, 30.h),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Welcome Back",
                      style: AppText.blueBold24,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                      style: AppText.greyReg14,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
