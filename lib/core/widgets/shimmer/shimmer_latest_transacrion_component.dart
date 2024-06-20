import 'package:ewallet/core/resource/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerLatestTrx extends StatelessWidget {
  const ShimmerLatestTrx({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 9.h),
          height: 50.h,
          width: 50.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: greyColor.withOpacity(0.3),
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 18.h,
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                height: 18.h,
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 16.w),
        Container(
          height: 18.h,
          width: 80.w,
          decoration: BoxDecoration(
            color: greyColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ],
    );
  }
}
