import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(16.w, 40.h, 16.w, 10.h),
        child: const Column(
          children: [
            HomeTopBar(),
          ],
        ),
      ),
    );
  }
}
