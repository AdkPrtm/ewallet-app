import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/transaction_history_widget.dart';
import 'package:ewallet/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/widgets/shimmer/shimmer_latest_transacrion_component.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 13.h),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
              if (state is TransactionHistoryLoaded) {
                if (state.dataTransactionHistoryEntity!.isEmpty) {
                  return Text(
                    'No data',
                    style: AppFont().blackTextStyle,
                    textAlign: TextAlign.center,
                  );
                }
                return Column(
                  children: state.dataTransactionHistoryEntity!.map((data) {
                    return TransactionHistoryWidget(
                      dataTransactionHistoryEntity: data,
                    );
                  }).toList(),
                );
              }
              List<dynamic> dummy = ['1', '2', '3', '4', '5'];
              return Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Column(
                  children:
                      dummy.map((_) => const ShimmerLatestTrx()).toList(),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
