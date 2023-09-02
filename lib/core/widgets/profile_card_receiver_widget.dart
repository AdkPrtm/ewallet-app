
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';

class ProfileCardReceiverWidget extends StatelessWidget {
  const ProfileCardReceiverWidget({
    super.key,
    required this.profileImage,
    required this.username,
  });

  final String profileImage;
  final String username;

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
            height: 45.h,
            width: 45.h,
            margin: EdgeInsets.only(bottom: 14.h),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  profileImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            username,
            style: AppFont().blackTextStyle.copyWith(
                  fontWeight: AppFont().medium,
                  fontSize: 12.sp,
                ),
          )
        ],
      ),
    );
  }
}
