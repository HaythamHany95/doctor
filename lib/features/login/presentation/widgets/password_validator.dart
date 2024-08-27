import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidator extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  const PasswordValidator({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 1 special character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At least 8 characters', hasMinLength),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidation) {
  return Row(
    children: [
      CircleAvatar(
        radius: 2.5.sp,
        backgroundColor: AppColors.grey,
      ),
      horizontalSpace(6),
      Text(
        text,
        style: AppText.darkBlueReg13.copyWith(
          decoration: hasValidation ? TextDecoration.lineThrough : null,
          decorationColor: AppColors.green,
          decorationThickness: 2,
          color: hasValidation ? AppColors.grey : AppColors.darkBlue,
        ),
      )
    ],
  );
}
