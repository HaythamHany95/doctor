import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Container(
                margin: EdgeInsets.only(top: 16.h),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.network(
                        'https://picsum.photos/200',
                        width: 110.w,
                        height: 110.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: AppText.blackBold18,
                            overflow: TextOverflow.ellipsis,
                          ),
                          verticalSpace(5),
                          Text(
                            'Degree | 0111111111111',
                            style: AppText.greyMed12,
                          ),
                          verticalSpace(5),
                          Text(
                            'Email@email.com',
                            style: AppText.greyMed12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
