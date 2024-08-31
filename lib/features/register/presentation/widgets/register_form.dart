import 'package:doctor/core/helpers/app_regex.dart';
import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/features/login/presentation/widgets/auth_text_field.dart';
import 'package:doctor/features/login/presentation/widgets/password_validator.dart';
import 'package:doctor/features/register/logic/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isValidationVisable = false;
  bool isPasswordSecure = true;
  bool isConfirmPasswordSecure = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    passwordController = context.read<RegisterCubit>().passwordController;

    setUpPasswordControllerListener();
  }

  void setUpPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        if (passwordController.text.isNotEmpty) {
          isValidationVisable = true;
        } else {
          isValidationVisable = false;
        }
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinimumLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          AuthTextField(
            hintText: "Name",
            controller: context.read<RegisterCubit>().nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your name";
              }
            },
          ),
          AuthTextField(
            hintText: "Email",
            controller: context.read<RegisterCubit>().emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
          ),
          AuthTextField(
            hintText: "Phone",
            maxLength: 11,
            controller: context.read<RegisterCubit>().phoneController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  AppRegex.isPhoneValid(value)) {
                return "Please enter your phone number";
              }
            },
          ),
          AuthTextField(
            hintText: "Password",
            controller: context.read<RegisterCubit>().passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return "Please enter a valid password";
              }
            },
            isSecure: isPasswordSecure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordSecure = !isPasswordSecure;
                });
              },
              child: Icon(
                isPasswordSecure ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          Visibility(
            visible: isValidationVisable,
            child: Column(
              children: [
                verticalSpace(10),
                PasswordValidator(
                  hasLowerCase: hasLowerCase,
                  hasUpperCase: hasUpperCase,
                  hasNumber: hasNumber,
                  hasSpecialCharacter: hasSpecialCharacter,
                  hasMinLength: hasMinLength,
                ),
              ],
            ),
          ),
          AuthTextField(
            hintText: "Confirm Password",
            controller: context.read<RegisterCubit>().confirmPasswordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  passwordController.text != value) {
                return "Please confirm your password";
              }
            },
            isSecure: isConfirmPasswordSecure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfirmPasswordSecure = !isConfirmPasswordSecure;
                });
              },
              child: Icon(
                isConfirmPasswordSecure
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }
}
