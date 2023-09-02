import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';

class TypeNumberWidget extends StatelessWidget {
  const TypeNumberWidget({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60.h,
        height: 60.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: numberBackgroundColor,
        ),
        child: Center(
          child: Text(
            title,
            style: AppFont().whiteTextStyle.copyWith(
                  fontSize: 22.sp,
                  fontWeight: AppFont().semibold,
                ),
          ),
        ),
      ),
    );
  }
}
