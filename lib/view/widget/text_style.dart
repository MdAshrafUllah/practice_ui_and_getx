import 'package:elearning/view/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextStyle subtitleTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.lightGreyColor54,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle ratingTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.titleColor,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
}

TextStyle totalStudentsTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.lightGreyColor54,
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle mentorTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.titleColor,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
}

TextStyle mentorNameTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.themeColor,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
}

TextStyle appointmentTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.lightGreyColor54,
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle languagesTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.lightGreyColor54,
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle coursePricesTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.lightGreyColor54,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  );
}

TextStyle buttonOneTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );
}

TextStyle buttonTwoTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.themeColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextStyle learnTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.lightGreyColor54,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle sectionTitleTextStyle() {
  return GoogleFonts.roboto(
    textStyle: const TextStyle(
      // color: AppColor.lightGreyColor54,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  );
}

TextStyle sectionSublistTitleTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.titleColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle sectionHeadingTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.titleColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  );
}

TextStyle showMoreTextStyle(bool showMore) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      color: showMore ? AppColor.lightGreyColor : AppColor.themeColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  );
}

TextStyle reviewCountTextStyle() {
  return GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColor.lightGreyColor,
      fontSize: 10,
      fontWeight: FontWeight.w600,
    ),
  );
}
