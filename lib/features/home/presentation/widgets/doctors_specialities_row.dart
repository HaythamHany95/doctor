import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitiesRow extends StatelessWidget {
  const DoctorsSpecialitiesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Doctor Speciality",
          style: AppText.blackSemi18,
        ),
        Text(
          "View All",
          style: AppText.blueReg12,
        ),
      ],
    );
  }
}
