import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Haytham!",
              style: AppText.blackBold18,
            ),
            Text(
              "How are you today?",
              style: AppText.greyReg11,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 25.r,
          backgroundColor: AppColors.morelighterGrey,
          child: SvgPicture.asset('assets/svgs/notification_icon.svg'),
        )
      ],
    );
  }
}
