import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:doctor/core/widgets/main_button.dart';
import 'package:doctor/features/login/presentation/widgets/terms_condition_text.dart';
import 'package:doctor/features/register/logic/cubit/register_cubit.dart';
import 'package:doctor/features/register/presentation/widgets/already_have_acc.dart';
import 'package:doctor/features/register/presentation/widgets/register_form.dart';
import 'package:doctor/features/register/presentation/widgets/sign_up_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    "Create Account",
                    style: AppText.blueBold24,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                    style: AppText.greyReg14,
                  ),
                  verticalSpace(10),
                  const RegisterForm(),
                  verticalSpace(20),
                  MainButton(
                      onPressed: () {
                        // ToDo:Register functionality
                        validateThenSignUp(context);
                      },
                      label: "  Sign Up"),
                  verticalSpace(30),
                  const TermsConditionText(),
                  verticalSpace(10),
                  const AlreadyHaveAcc(),
                  const SignUpBlocListener(),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

void validateThenSignUp(BuildContext context) {
  if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
    context.read<RegisterCubit>().register();
  }
}
