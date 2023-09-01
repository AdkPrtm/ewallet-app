import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final String navigator = arg['navigator'];
    final String title = arg['title'];
    final String subtitle = arg['subtitle'];
    final String textButton = arg['textButton'];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppFont().blackTextStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: AppFont().semibold,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 26.h),
            Text(
              subtitle,
              style: AppFont().greyTextStyle.copyWith(fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.h),
            CustomFilledButton(
              title: textButton,
              width: 183.w,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, navigator, (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
