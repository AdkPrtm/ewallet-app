import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';

class SelectOptionWidget extends StatelessWidget {
  const SelectOptionWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    this.isSelected = false,
  });

  final String title;
  final String subtitle;
  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: isSelected
              ? Border.all(
                  color: blueColor,
                  width: 2,
                )
              : null),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 30,
            width: 96,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: AppFont().blackTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: AppFont().semibold,
                    ),
                textAlign: TextAlign.right,
              ),
              Text(
                subtitle,
                style: AppFont().greyTextStyle.copyWith(fontSize: 12.sp),
                textAlign: TextAlign.right,
              ),
            ],
          )
        ],
      ),
    );
  }
}
