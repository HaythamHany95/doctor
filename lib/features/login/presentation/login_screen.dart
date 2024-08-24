import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:doctor/core/widgets/main_button.dart';
import 'package:doctor/features/login/presentation/widgets/already_have_acc_text.dart';
import 'package:doctor/features/login/presentation/widgets/email_and_password.dart';
import 'package:doctor/features/login/presentation/widgets/terms_condition_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    ),
                    EmailAndPassword(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Forgot Password?",
                      textAlign: TextAlign.end,
                      style:
                          AppText.greyReg12.copyWith(color: AppColors.mainBlue),
                    ),
                    SizedBox(
                      height: 41.h,
                    ),
                    MainButton(
                        onPressed: () {
                          /// ToDo:Login functionality
                        },
                        label: "Login"),
                    SizedBox(
                      height: 50.h,
                    ),
                    const TermsConditionText(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const AlreadyHaveAccText()
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
