import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    required this.onTap,
    this.disable = false,
  });

  final String title;
  final double width;
  final bool disable;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: 50.h,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: disable ? greyColor : purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: AppFont().whiteTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
      ),
    );
  }
}

class CustomeTextButton extends StatelessWidget {
  const CustomeTextButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    required this.onTap,
  });

  final String title;
  final double width;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 24.h,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          title,
          style: AppFont().greyTextStyle.copyWith(
                fontSize: 16.sp,
              ),
        ),
      ),
    );
  }
}