import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/tips_widget.dart';

class CustomTipsComponent extends StatelessWidget {
  const CustomTipsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Friendly Tips',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
        SizedBox(height: 14.h),
        Wrap(
          spacing: 17.w,
          runSpacing: 18.h,
          children: [
            TipsWidget(
              title: 'Best tips for using a credit card',
              tipsimage: ImgString.tips1Image,
              url: Uri.parse('https://www.google.com/'),
            ),
            TipsWidget(
              title: 'Spot the good pie of finance model',
              tipsimage: ImgString.tips2Image,
              url: Uri.parse('https://www.google.com/'),
            ),
            TipsWidget(
              title: 'Great hack to get better advices',
              tipsimage: ImgString.tips3Image,
              url: Uri.parse('https://www.google.com/'),
            ),
            TipsWidget(
              title: 'Save more penny buy this instead',
              tipsimage: ImgString.tips4Image,
              url: Uri.parse('https://www.google.com/'),
            ),
          ],
        )
      ],
    );
  }
}
