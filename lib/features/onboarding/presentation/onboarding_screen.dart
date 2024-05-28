import 'package:doctor/core/helpers/app_assets.dart';
import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:doctor/core/widgets/main_button.dart';
import 'package:doctor/features/onboarding/presentation/widgets/doctor_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 65.h),
              child: SvgPicture.asset(AppAssets.onboardingLogo),
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 491.h,
              child: const DoctorStack(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(32.w, 18.h, 31.w, 5.h),
              child: Text(
                "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                style: AppText.greyReg12,
                textAlign: TextAlign.center,
              ),
            ),
            MainButton(
              label: "Get Started",
              onPressed: () => context.pushNamed(
                Routes.loginScreen,
              ),
            )
          ],
        ),
      ),
    );
  }
}
