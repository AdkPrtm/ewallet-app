import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';

class CustomWellcomeProfileComponent extends StatelessWidget {
  const CustomWellcomeProfileComponent({
    super.key,
    required this.name,
    required this.urlPicture,
    required this.verified,
  });

  final String name;
  final String urlPicture;
  final String verified;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Howdy,',
              style: AppFont().greyTextStyle.copyWith(fontSize: 16.sp),
            ),
            Text(
              name,
              style: AppFont().blackTextStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: AppFont().semibold,
                  ),
            ),
          ],
        ),
        SizedBox(
          height: 60.h,
          width: 60.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(urlPicture),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              verified == "0"
                  ? const SizedBox()
                  : Align(
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
            ],
          ),
        )
      ],
    );
  }
}
