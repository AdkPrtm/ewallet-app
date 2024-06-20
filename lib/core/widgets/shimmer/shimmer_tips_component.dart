import 'package:ewallet/core/resource/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerTipsComponent extends StatelessWidget {
  const ShimmerTipsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: greyColor.withOpacity(0.3),
      ),
    );
  }
}
