import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              style: AppFont().blackTextStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: AppFont().semibold,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 26.h),
            Text(
              'Grow your finance start\ntogether with us',
              style: AppFont().greyTextStyle.copyWith(fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.h),
            CustomFilledButton(
              title: 'Get Started',
              width: 183.w,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
