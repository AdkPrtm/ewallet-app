import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/feature/onboarding/component/bottom_container_component.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together'
  ];

  List<String> subtitle = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Image.asset(
                'assets/image/onboarding1.png',
                height: 331.h,
              ),
              Image.asset(
                'assets/image/onboarding2.png',
                height: 331.h,
              ),
              Image.asset(
                'assets/image/onboarding3.png',
                height: 331.h,
              ),
            ],
            options: CarouselOptions(
              height: 331.h,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            carouselController: _carouselController,
          ),
          SizedBox(height: 80.h),
          BottomContainerComponent(
            titles: titles,
            currentIndex: currentIndex,
            subtitle: subtitle,
            carouselController: _carouselController,
          ),
        ],
      ),
    );
  }
}
