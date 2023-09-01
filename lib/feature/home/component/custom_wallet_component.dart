import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';

class CustomWalletComponent extends StatelessWidget {
  const CustomWalletComponent({
    super.key,
    required this.nama,
    required this.card,
    required this.balance,
  });

  final String nama;
  final String card;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.h,
      padding: EdgeInsets.all(30.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          image: AssetImage(ImgString.bgCardImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nama,
            style: AppFont().whiteTextStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: AppFont().medium,
                ),
          ),
          SizedBox(height: 24.h),
          Text(
            '**** **** **** ${card.substring(12, 16)}',
            style: AppFont().whiteTextStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: AppFont().medium,
                  letterSpacing: 5.9.w,
                ),
          ),
          SizedBox(height: 18.h),
          Text('Balance', style: AppFont().whiteTextStyle),
          Text(
            formatCurrency(num.parse(balance)),
            style: AppFont().whiteTextStyle.copyWith(
                  fontSize: 24.sp,
                  fontWeight: AppFont().semibold,
                ),
          ),
        ],
      ),
    );
  }
}
