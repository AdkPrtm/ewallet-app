import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/src/src.dart';
import 'package:ewallet/core/resource/theme/theme.dart';
import 'package:ewallet/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

class SearchingResultWidget extends StatelessWidget {
  const SearchingResultWidget({
    super.key,
    this.isSelected = false,
    required this.userBySearchingEntity,
  });

  final bool isSelected;
  final UserBySearchingEntity userBySearchingEntity;

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
                      image: CachedNetworkImageProvider(
                        userBySearchingEntity.profilePicture!,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                userBySearchingEntity.verified!
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
            userBySearchingEntity.username!,
            style: AppFont().blackTextStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: AppFont().medium,
                ),
          ),
          Text(
            '@${userBySearchingEntity.username}',
            style: AppFont().greyTextStyle.copyWith(
                  fontSize: 12.sp,
                ),
          )
        ],
      ),
    );
  }
}
