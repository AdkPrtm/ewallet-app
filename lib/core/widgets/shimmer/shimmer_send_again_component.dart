import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/resource/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerSendAgain extends StatelessWidget {
  const ShimmerSendAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 100.h,
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 17.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: greyColor.withOpacity(0.3),
      ),
    );
  }
}
