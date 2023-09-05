import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/src/src.dart';

class ImageProfileHeader extends StatelessWidget {
  const ImageProfileHeader({
    super.key,
    required this.url,
    required this.verified,
  });

  final String url;
  final String verified;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: 120.h,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: CachedNetworkImageProvider(url),
                fit: BoxFit.cover,
              ),
            ),
          ),
          verified == '0'
              ? Align(
                  alignment: const Alignment(0.9, -0.9),
                  child: Container(
                    height: 25.h,
                    width: 25.h,
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
              : Container(),
        ],
      ),
    );
  }
}
