import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/theme/theme.dart';

class AppFont {
  TextStyle blackTextStyle = TextStyle(color: blackColor, fontSize: 14.sp);
  TextStyle whiteTextStyle = TextStyle(color: whiteColor, fontSize: 14.sp);
  TextStyle greyTextStyle = TextStyle(color: greyColor, fontSize: 14.sp);
  TextStyle blueTextStyle = TextStyle(color: blueColor, fontSize: 14.sp);
  TextStyle greenTextStyle = TextStyle(color: greenColor, fontSize: 14.sp);

  FontWeight light = FontWeight.w300;
  FontWeight reguler = FontWeight.w400;
  FontWeight medium = FontWeight.w500;
  FontWeight semibold = FontWeight.w600;
  FontWeight bold = FontWeight.w700;
  FontWeight extrabold = FontWeight.w800;
  FontWeight black = FontWeight.w900;
}
