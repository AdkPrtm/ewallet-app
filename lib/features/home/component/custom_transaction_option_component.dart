import 'package:ewallet/features/user/presentation/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/more_dialog_widget.dart';
import 'package:ewallet/core/widgets/transaction_option_widget.dart';

class TransactionOptionComponent extends StatelessWidget {
  const TransactionOptionComponent({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Do Something',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
        SizedBox(height: 14.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TransactionWidget(
              title: 'Top Up',
              icon: IconString.topupIcon,
              onTap: () => Navigator.pushNamed(context, '/topup'),
            ),
            TransactionWidget(
              title: 'Send',
              icon: IconString.sendIcon,
              onTap: () {
                final authState = context.read<UserBloc>().state;
                if (authState is UserLoaded) {
                  authState.userEntity.verified!
                      ? Navigator.pushNamed(context, '/transfer')
                      : showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Not Verified'),
                            content: const Text(
                                'Please verify your account in profile page'),
                            actions: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: purpleColor,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Close',
                                    style: AppFont().whiteTextStyle,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                }
              },
            ),
            TransactionWidget(
              title: 'Withdraw',
              icon: IconString.withdrawIcon,
              onTap: () {},
            ),
            TransactionWidget(
              title: 'More',
              icon: IconString.moreIcon,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => const MoreDialogWidget(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
