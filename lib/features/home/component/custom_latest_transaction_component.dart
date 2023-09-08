import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/transaction_history_widget.dart';
import 'package:template_clean_architecture/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:template_clean_architecture/injection_container.dart';

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
          child: BlocProvider(
            create: (context) =>
                sl<TransactionBloc>()..add(const GetTransactionHistoryEvent()),
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
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: CircularProgressIndicator(
                    color: purpleColor,
                    strokeWidth: 5.h,
                  )),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
