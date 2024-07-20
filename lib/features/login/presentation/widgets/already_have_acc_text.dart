import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccText extends StatelessWidget {
  const AlreadyHaveAccText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: 'Already have an account yet?', style: AppText.blackReg14),
          TextSpan(
            text: ' Sign Up',
            style: AppText.blueSemi14,
          )
        ],
      ),
    );
  }
}
