import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/src/src.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class SearchingResultWidget extends StatelessWidget {
  const SearchingResultWidget({
    super.key,
    required this.name,
    required this.username,
    required this.profilePicture,
    required this.isVerified,
    this.isSelected = false,
  });

  final String name;
  final String username;
  final String profilePicture;
  final bool isVerified;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.w,
      padding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(
            color: isSelected ? blueColor : whiteColor,
          )),
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
            width: 70.h,
            child: Stack(
              children: [
                Container(
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
                isVerified
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 14.h,
                          width: 14.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                IconString.checkIcon,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          13.0.height,
          Text(
            name,
            style: AppFont().blackTextStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: AppFont().medium,
                ),
          ),
          Text(
            '@$username',
            style: AppFont().greyTextStyle.copyWith(
                  fontSize: 12.sp,
                ),
          )
        ],
      ),
    );
  }
}
