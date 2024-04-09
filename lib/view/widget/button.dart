import 'package:elearning/view/utils/app_colors.dart';
import 'package:flutter/material.dart';

ButtonStyle buttonStyleOne() {
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
    backgroundColor: AppColor.themeColor,
    foregroundColor: AppColor.whiteColor,
    padding: const EdgeInsets.all(12),
  );
}

ButtonStyle buttonStyleTwo() {
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: const BorderSide(
          width: 1,
          color: AppColor.themeColor,
        )),
    backgroundColor: AppColor.themeLiteColor,
    foregroundColor: AppColor.themeColor,
    padding: const EdgeInsets.all(12),
  );
}
