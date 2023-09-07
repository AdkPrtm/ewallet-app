import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/entities.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class RecentUserWidget extends StatelessWidget {
  const RecentUserWidget({
    super.key,
    required this.dataTransferHistory,
    required this.isSelected,
  });
  final bool isSelected;
  final DataTransferHistory dataTransferHistory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: EdgeInsets.only(bottom: 14.h),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  dataTransferHistory.profilePicture!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          14.0.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataTransferHistory.name!,
                style: AppFont().blackTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: AppFont().medium,
                    ),
              ),
              Text(
                '@${dataTransferHistory.username}',
                style: AppFont().greyTextStyle.copyWith(fontSize: 12.sp),
              ),
            ],
          ),
          const Spacer(),
          dataTransferHistory.verified == '1'
              ? Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 14,
                      color: greenColor,
                    ),
                    Text(
                      'Verified',
                      style: AppFont().greenTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: AppFont().medium,
                          ),
                    )
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
