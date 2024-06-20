import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';

class FieldAmountComponent extends StatelessWidget {
  const FieldAmountComponent({
    super.key,
    required this.amountController,
  });

  final TextEditingController amountController;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: 250.w,
        child: TextFormField(
          controller: amountController,
          cursorColor: greyColor,
          enabled: false,
          style: AppFont().whiteTextStyle.copyWith(
                fontSize: 36.sp,
                fontWeight: AppFont().medium,
              ),
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              prefix: Text(
                'Rp ',
                style: AppFont().whiteTextStyle.copyWith(
                      fontSize: 36.sp,
                      fontWeight: AppFont().medium,
                    ),
              )),
        ),
      ),
    );
  }
}
