import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // show loading
            showDialog(
              context: context,
              builder: (_) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainBlue,
                ),
              ),
            );
          },
          success: (loginResponse) {
            // hide loading
            context.pop();
            // navigate to home
            context.pushNamedAndRemoveUntil(
              Routes.homeScreen,
              predicate: (_) => false,
            );
          },
          error: (error) {
            // hide loading
            context.pop();
            // show error
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Error'),
                content: Text(error),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
