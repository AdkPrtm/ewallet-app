import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/transaction_history_widget.dart';

class CustomLatestTransactionComponent extends StatelessWidget {
  const CustomLatestTransactionComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transactions',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
        SizedBox(height: 14.h),
        Container(
          width: 327.w,
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              TransactionHistoryWidget(
                title: 'Top Up',
                date: 'Yesterday',
                amount: 450000,
                symbol: '+ ',
                color: blueBackgroundTransactionHistory,
                imgSrc: SvgSrc.trxTopupIcon,
              ),
              SizedBox(height: 18.h),
              TransactionHistoryWidget(
                title: 'Cashback',
                date: 'Sep 11',
                amount: 450000,
                symbol: '+ ',
                color: purpleBackgroundTransactionHistory,
                imgSrc: SvgSrc.trxCashbackIcon,
              ),
              SizedBox(height: 18.h),
              TransactionHistoryWidget(
                title: 'Withdraw',
                date: 'Sep 2',
                amount: 450000,
                symbol: '+ ',
                color: greenBackgroundTransactionHistory,
                imgSrc: SvgSrc.trxWithdrawIcon,
              ),
              SizedBox(height: 18.h),
              TransactionHistoryWidget(
                title: 'Transfer',
                date: 'Aug 27',
                amount: 450000,
                symbol: '+ ',
                color: blueDarkBackgroundTransactionHistory,
                imgSrc: SvgSrc.trxTransferIcon,
              ),
              SizedBox(height: 18.h),
              TransactionHistoryWidget(
                title: 'Electric',
                date: 'Feb 18',
                amount: 450000,
                symbol: '+ ',
                color: orangeBackgroundTransactionHistory,
                imgSrc: SvgSrc.trxElectricIcon,
              ),
            ],
          ),
        )
      ],
    );
  }
}
