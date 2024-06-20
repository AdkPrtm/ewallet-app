import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/features/transaction/domain/entities/entities.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({
    super.key,
    required this.dataTransactionHistoryEntity,
  });

  final DataTransactionHistoryEntity dataTransactionHistoryEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 9.h),
          height: 48.h,
          width: 48.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(
            child: CachedNetworkImage(
              imageUrl: dataTransactionHistoryEntity.transactionThumbnail ?? '',
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataTransactionHistoryEntity.transactionName ?? '',
              style: AppFont().blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: AppFont().medium,
                  ),
            ),
            Text(
              dateToMonthDate(
                  dataTransactionHistoryEntity.createdAt ?? DateTime.now()),
              style: AppFont().greyTextStyle.copyWith(
                    fontSize: 12.sp,
                    overflow: TextOverflow.fade,
                  ),
              maxLines: 1,
            ),
          ],
        ),
        const Spacer(),
        Text(
          dataTransactionHistoryEntity.transactionAction == 'CR'
              ? '+ ${formatCurrency(dataTransactionHistoryEntity.amount ?? 0)}'
              : '- ${formatCurrency(dataTransactionHistoryEntity.amount ?? 0)}',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().medium,
              ),
        )
      ],
    );
  }
}
