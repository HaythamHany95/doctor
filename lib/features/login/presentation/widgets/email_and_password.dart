import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/login/presentation/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isSecure = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AuthTextField(
            hintText: "Email",
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid email";
              }
            },
          ),
          AuthTextField(
            hintText: "Password",
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
            isSecure: isSecure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isSecure = !isSecure;
                });
              },
              child: Icon(
                isSecure ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
