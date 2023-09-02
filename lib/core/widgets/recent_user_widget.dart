import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class RecentUserWidget extends StatelessWidget {
  const RecentUserWidget({
    super.key,
    required this.isVerified,
    required this.name,
    required this.username,
    required this.profilePicture,
  });

  final bool isVerified;
  final String name;
  final String username;
  final String profilePicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  profilePicture,
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
                name,
                style: AppFont().blackTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: AppFont().medium,
                    ),
              ),
              Text(
                '@$username',
                style: AppFont().greyTextStyle.copyWith(fontSize: 12.sp),
              ),
            ],
          ),
          const Spacer(),
          isVerified
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
