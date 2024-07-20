import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';

class TermsConditionText extends StatelessWidget {
  const TermsConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By login, you agree to our',
            style: AppText.greyReg14,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: AppText.blackMed14,
          ),
          TextSpan(
            text: ' and',
            style: AppText.greyReg14,
          ),
          TextSpan(
            text: ' PrivacyPolicy',
            style: AppText.blackMed14,
          ),
        ],
      ),
    );
  }
}
