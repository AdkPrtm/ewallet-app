import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.color,
    required this.imgSrc,
    required this.symbol,
  });

  final String title;
  final String date;
  final num amount;
  final String symbol;
  final Color color;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width: 48.h,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              imgSrc,
              width: 18,
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppFont().blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: AppFont().medium,
                  ),
            ),
            Text(
              date,
              style: AppFont().greyTextStyle.copyWith(fontSize: 12.sp),
            ),
          ],
        ),
        const Spacer(),
        Text(
          symbol + formatCurrency(amount),
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().medium,
              ),
        )
      ],
    );
  }
}
