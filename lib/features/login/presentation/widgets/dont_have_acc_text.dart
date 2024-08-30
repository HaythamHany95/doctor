import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';

class DontHaveAccText extends StatelessWidget {
  const DontHaveAccText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(text: 'Don\'t have an account?', style: AppText.blackReg14),
          TextSpan(
            text: ' Sign Up',
            style: AppText.blueSemi14,
          )
        ],
      ),
    );
  }
}
