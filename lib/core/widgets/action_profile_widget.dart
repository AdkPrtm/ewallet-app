import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

class ActionProfileWidget extends StatelessWidget {
  const ActionProfileWidget({
    super.key,
    required this.svgAsset,
    required this.title,
    required this.onTap,
    this.verified = false,
    this.isVerifiedList = false,
  });

  final String svgAsset;
  final String title;
  final bool verified;
  final bool isVerifiedList;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
            svgAsset,
            width: 24.h,
          ),
          18.0.width,
          Expanded(
            child: Text(
              title,
              style: AppFont().blackTextStyle.copyWith(
                    fontWeight: AppFont().medium,
                  ),
            ),
          ),
          isVerifiedList
              ? verified
                  ? const Icon(Icons.verified_outlined)
                  : const Icon(Icons.cancel_outlined)
              : const SizedBox()
        ],
      ),
    );
  }
}
