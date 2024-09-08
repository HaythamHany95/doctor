import 'package:doctor/core/helpers/app_assets.dart';
import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialitiesListView extends StatelessWidget {
  const DoctorsSpecialitiesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: i == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 39.r,
                  backgroundColor: AppColors.morelighterGrey,
                  child: SvgPicture.asset(
                    AppAssets.notificationIcon,
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(8),
                Center(
                  child: Text(
                    'Speciality $i',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppText.blackReg14,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
