import 'package:doctor/core/helpers/app_assets.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorStack extends StatelessWidget {
  const DoctorStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AppAssets.backgroundLogo,
        ),
        Image.asset(
          AppAssets.onboardingDocImage,
          width: double.infinity,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.35, 0.75],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "Best Doctor\n Appointment App",
            style: AppText.blueBold32,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
