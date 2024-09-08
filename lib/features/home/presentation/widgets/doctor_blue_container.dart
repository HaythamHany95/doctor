import 'package:doctor/core/helpers/app_assets.dart';
import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBlueCard extends StatelessWidget {
  const HomeBlueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24.r)),
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage(AppAssets.homeCardBackground),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  textAlign: TextAlign.start,
                  style: AppText.whiteMed18,
                ),
                verticalSpace(12),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Find Nearby',
                      style: AppText.blueReg12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8.w,
            child: Image.asset(
              AppAssets.homeCardDoctorImage,
              height: 200.h,
            ),
          )
        ],
      ),
    );
  }
}
