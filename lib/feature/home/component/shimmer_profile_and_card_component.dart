import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';


class ShimmerProfileAndCardComponent extends StatelessWidget {
  const ShimmerProfileAndCardComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 58.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    color: greyColor.withOpacity(0.3),
                  ),
                ),
                2.0.height,
                Container(
                  width: 117.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: greyColor.withOpacity(0.3),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 60.h,
              width: 60.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: greyColor.withOpacity(0.3),
              ),
            )
          ],
        ),
        SizedBox(height: 32.h),
        Container(
          width: double.infinity,
          height: 220.h,
          decoration: BoxDecoration(
            color: greyColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(28),
          ),
        ),
      ],
    );
  }
}
