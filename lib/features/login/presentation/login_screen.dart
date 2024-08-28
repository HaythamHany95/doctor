import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:doctor/core/widgets/main_button.dart';
import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/login/presentation/widgets/already_have_acc_text.dart';
import 'package:doctor/features/login/presentation/widgets/email_and_password.dart';
import 'package:doctor/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:doctor/features/login/presentation/widgets/terms_condition_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                    ),
                    const EmailAndPassword(),
                    verticalSpace(16),
                    Text(
                      "Forgot Password?",
                      textAlign: TextAlign.end,
                      style:
                          AppText.greyReg12.copyWith(color: AppColors.mainBlue),
                    ),
                    verticalSpace(41),
                    MainButton(
                        onPressed: () {
                          // ToDo:Login functionality
                          validateThenLogin(context);
                        },
                        label: "Login"),
                    verticalSpace(50),
                    const TermsConditionText(),
                    verticalSpace(20),
                    const AlreadyHaveAccText(),
                    const LoginBlocListener(),
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

void validateThenLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().login(
          LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ),
        );
  }
}
