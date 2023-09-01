import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class ActionProfileWidget extends StatelessWidget {
  const ActionProfileWidget({
    super.key,
    required this.svgAsset,
    required this.title,
    required this.onTap,
  });

  final String svgAsset;
  final String title;
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
          Text(
            title,
            style: AppFont().blackTextStyle.copyWith(
                  fontWeight: AppFont().medium,
                ),
          )
        ],
      ),
    );
  }
}
