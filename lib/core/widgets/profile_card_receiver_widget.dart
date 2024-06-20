import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/theme/theme.dart';
import 'package:ewallet/features/transfer/domain/entities/entities.dart';

class ProfileCardReceiverWidget extends StatelessWidget {
  const ProfileCardReceiverWidget({
    super.key,
    required this.dataTransferHistory,
  });

  final DataTransferHistory dataTransferHistory;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 17.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Container(
            height: 60.h,
            width: 45.h,
            margin: EdgeInsets.only(bottom: 8.h),
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
          Text(
            '@${dataTransferHistory.username!}',
            style: AppFont().blackTextStyle.copyWith(
                  fontWeight: AppFont().medium,
                  fontSize: 12.sp,
                  overflow: TextOverflow.ellipsis,
                ),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
