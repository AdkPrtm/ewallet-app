import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/theme/theme.dart';
import 'package:ewallet/features/product/domain/domain.dart';

class SelectProviderWidget extends StatelessWidget {
  const SelectProviderWidget({
    super.key,
    required this.dataOperatorCardEntity,
    this.isSelected = false,
  });

  final DataOperatorCardEntity dataOperatorCardEntity;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 18.h),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: isSelected
              ? Border.all(
                  color: blueColor,
                  width: 2,
                )
              : null),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CachedNetworkImage(
            imageUrl: dataOperatorCardEntity.thumbnail ?? '',
            height: 30,
            width: 96,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                dataOperatorCardEntity.name ?? '',
                style: AppFont().blackTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: AppFont().semibold,
                    ),
                textAlign: TextAlign.right,
              ),
              Text(
                dataOperatorCardEntity.status ?? '',
                style: AppFont().greyTextStyle.copyWith(fontSize: 12.sp),
                textAlign: TextAlign.right,
              ),
            ],
          )
        ],
      ),
    );
  }
}
