import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/profile_card_receiver_widget.dart';
import 'package:template_clean_architecture/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:template_clean_architecture/injection_container.dart';

class CustomSendAgainComponent extends StatelessWidget {
  const CustomSendAgainComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Send Again',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
        SizedBox(height: 14.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: BlocProvider(
            create: (context) => sl<TransferBloc>()
              ..add(const RequestTransferHistoryEvent(limit: '5')),
            child: BlocBuilder<TransferBloc, TransferState>(
              builder: (context, state) {
                if (state is SuccessTransferHistory) {
                  if (state.dataTransferHistory!.isEmpty) {
                    return Text(
                      'No data',
                      style: AppFont().blackTextStyle,
                      textAlign: TextAlign.center,
                    );
                  } else {
                    return Row(
                      children: state.dataTransferHistory!
                          .map((data) => ProfileCardReceiverWidget(
                              dataTransferHistory: data))
                          .toList(),
                    );
                  }
                }
                return Center(
                  child: CircularProgressIndicator(
                    color: purpleColor,
                    strokeWidth: 5.h,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
