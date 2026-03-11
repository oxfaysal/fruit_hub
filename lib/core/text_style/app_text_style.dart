import 'package:flutter/widgets.dart';
import 'package:fruithub_ecommerce/core/color/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {

  static final titleWhite24 = GoogleFonts.badScript(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColor.whiteColor,
  );

  static final titleBlack20 = GoogleFonts.josefinSans(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColor.textColor,
  );

  static final titleBlack20w400 = GoogleFonts.josefinSans(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColor.textColor,
  );

  static final titleBlack16 = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.subTextColor,
  );

  static final titleWhite16 = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColor.whiteColor,
  );

}