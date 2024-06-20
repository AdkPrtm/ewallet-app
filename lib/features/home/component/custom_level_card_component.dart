import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';

class CustomLevelCardComponent extends StatelessWidget {
  const CustomLevelCardComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80.h,
      width: 327.w,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('Level 1', style: AppFont().blackTextStyle),
              const Spacer(),
              Text(
                '55% ',
                style: AppFont()
                    .greenTextStyle
                    .copyWith(fontWeight: AppFont().semibold),
              ),
              Text(
                'of ${formatCurrency(20000)}',
                style: AppFont()
                    .blackTextStyle
                    .copyWith(fontWeight: AppFont().semibold),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackground,
              minHeight: 5.h,
            ),
          ),
        ],
      ),
    );
  }
}
