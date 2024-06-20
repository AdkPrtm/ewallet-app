import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/transaction_option_widget.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

class MoreDialogWidget extends StatelessWidget {
  const MoreDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 345.h,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do More With Us',
              style: AppFont().blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: AppFont().semibold,
                  ),
            ),
            13.0.height,
            Wrap(
              spacing: 27.2.w,
              runSpacing: 29.h,
              children: [
                TransactionWidget(
                  icon: IconString.dataIcon,
                  title: 'Data',
                  onTap: () => Navigator.pushNamed(context, '/select-provider'),
                ),
                TransactionWidget(
                  icon: IconString.waterIcon,
                  title: 'Water',
                  onTap: () {},
                ),
                TransactionWidget(
                  icon: IconString.streamIcon,
                  title: 'Stream',
                  onTap: () {},
                ),
                TransactionWidget(
                  icon: IconString.movieIcon,
                  title: 'Movie',
                  onTap: () {},
                ),
                TransactionWidget(
                  icon: IconString.foodIcon,
                  title: 'Food',
                  onTap: () {},
                ),
                TransactionWidget(
                  icon: IconString.travelIcon,
                  title: 'Travel',
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
