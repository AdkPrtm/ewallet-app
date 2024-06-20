import 'package:ewallet/core/widgets/shimmer/shimmer_send_again_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/profile_card_receiver_widget.dart';
import 'package:ewallet/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:shimmer/shimmer.dart';

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
              List<dynamic> dummy = ['1', '2', '3', '4', '5'];
              return Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Row(
                  children:
                      dummy.map((_) => const ShimmerSendAgain()).toList(),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
