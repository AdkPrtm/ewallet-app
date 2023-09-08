import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/more_dialog_widget.dart';
import 'package:template_clean_architecture/core/widgets/transaction_option_widget.dart';

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
              onTap: () => Navigator.pushNamed(context, '/transfer'),
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
