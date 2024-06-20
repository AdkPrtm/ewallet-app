import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/features/product/product.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

class SelectPackageWidget extends StatelessWidget {
  const SelectPackageWidget({
    super.key,
    required this.dataPlansListEntity,
    this.isSelected = false,
  });

  final DataPlansListEntity dataPlansListEntity;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171.h,
      width: 155.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: isSelected
              ? Border.all(
                  color: blueColor,
                  width: 2,
                )
              : null),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dataPlansListEntity.name ?? '',
            style: AppFont().blackTextStyle.copyWith(
                  fontSize: 28.sp,
                  fontWeight: AppFont().semibold,
                ),
            textAlign: TextAlign.center,
          ),
          6.0.height,
          Text(
            formatCurrency(dataPlansListEntity.price ?? 0),
            style: AppFont().greyTextStyle.copyWith(
                  fontSize: 12.sp,
                ),
          ),
        ],
      ),
    );
  }
}
