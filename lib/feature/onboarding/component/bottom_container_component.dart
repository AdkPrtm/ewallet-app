
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';

class BottomContainerComponent extends StatelessWidget {
  const BottomContainerComponent({
    super.key,
    required this.titles,
    required this.currentIndex,
    required this.subtitle,
    required CarouselController carouselController,
  }) : _carouselController = carouselController;

  final List<String> titles;
  final int currentIndex;
  final List<String> subtitle;
  final CarouselController _carouselController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      padding: EdgeInsets.symmetric(
        horizontal: 22.w,
        vertical: 24.h,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            titles[currentIndex],
            textAlign: TextAlign.center,
            style: AppFont().blackTextStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: AppFont().semibold,
                ),
          ),
          SizedBox(height: 26.h),
          Text(
            subtitle[currentIndex],
            textAlign: TextAlign.center,
            style: AppFont().greyTextStyle.copyWith(fontSize: 16.sp),
          ),
          SizedBox(height: currentIndex == 2 ? 38.h : 50.h),
          currentIndex == 2
              ? Column(
                  children: [
                    CustomFilledButton(
                      title: 'Get Started',
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/signup', (route) => false);
                      },
                    ),
                    SizedBox(height: 20.h),
                    CustomeTextButton(
                      title: 'Sign In',
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/signin', (route) => false);
                      },
                    )
                  ],
                )
              : Row(
                  children: [
                    Container(
                      height: 12.h,
                      width: 12.w,
                      margin: EdgeInsets.only(right: 10.h),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0
                            ? blueColor
                            : lightBackground,
                      ),
                    ),
                    Container(
                      height: 12.h,
                      width: 12.w,
                      margin: EdgeInsets.only(right: 10.h),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1
                            ? blueColor
                            : lightBackground,
                      ),
                    ),
                    Container(
                      height: 12.h,
                      width: 12.w,
                      margin: EdgeInsets.only(right: 10.h),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2
                            ? blueColor
                            : lightBackground,
                      ),
                    ),
                    const Spacer(),
                    CustomFilledButton(
                      title: 'Continue',
                      width: 150,
                      onTap: () {
                        _carouselController.nextPage();
                      },
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
