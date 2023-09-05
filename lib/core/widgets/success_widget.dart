import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/utils/helper/helper.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key, required this.successWidgetModelHelper});

  final SuccessWidgetModelHelper successWidgetModelHelper;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              successWidgetModelHelper.title!,
              style: AppFont().blackTextStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: AppFont().semibold,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 26.h),
            Text(
              successWidgetModelHelper.subtitle!,
              style: AppFont().greyTextStyle.copyWith(fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.h),
            CustomFilledButton(
              title: successWidgetModelHelper.textButton!,
              width: 183.w,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context,
                    successWidgetModelHelper.navigator!, (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
