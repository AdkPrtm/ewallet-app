import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_clean_architecture/core/resource/theme/theme.dart';

class AppFont {
  TextStyle blackTextStyle = GoogleFonts.poppins(
    color: blackColor,
    fontSize: 14.sp,
  );

  TextStyle whiteTextStyle = GoogleFonts.poppins(
    color: whiteColor,
    fontSize: 14.sp,
  );

  TextStyle greyTextStyle = GoogleFonts.poppins(
    color: greyColor,
    fontSize: 14.sp,
  );

  TextStyle blueTextStyle = GoogleFonts.poppins(
    color: blueColor,
    fontSize: 14.sp,
  );

  TextStyle greenTextStyle = GoogleFonts.poppins(
    color: greenColor,
    fontSize: 14.sp,
  );

  FontWeight light = FontWeight.w300;
  FontWeight reguler = FontWeight.w400;
  FontWeight medium = FontWeight.w500;
  FontWeight semibold = FontWeight.w600;
  FontWeight bold = FontWeight.w700;
  FontWeight extrabold = FontWeight.w800;
  FontWeight black = FontWeight.w900;
}
