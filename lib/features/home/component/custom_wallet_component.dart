import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';

class CustomWalletComponent extends StatelessWidget {
  const CustomWalletComponent({
    super.key,
    required this.nama,
    required this.card,
    required this.balance,
  });

  final String nama;
  final String card;
  final int balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
                  fontSize: 14.sp,
                  fontWeight: AppFont().medium,
                  letterSpacing: 5.9.w,
                ),
          ),
          SizedBox(height: 18.h),
          Text('Balance', style: AppFont().whiteTextStyle),
          Text(
            formatCurrency(balance),
            style: AppFont().whiteTextStyle.copyWith(
                  fontSize: 22.sp,
                  fontWeight: AppFont().semibold,
                ),
          ),
        ],
      ),
    );
  }
}
