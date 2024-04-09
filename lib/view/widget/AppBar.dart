import 'package:elearning/view/utils/app_colors.dart';
import 'package:elearning/view/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBarStyle(String title) {
  return AppBar(
    leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AssetsPath.drawerIconSvg,
          height: 18,
          width: 24,
        )),
    title: Text(
      title,
      style: GoogleFonts.roboto(
          textStyle: const TextStyle(
        fontWeight: FontWeight.w400,
      )),
    ),
    centerTitle: true,
    foregroundColor: Colors.white,
    backgroundColor: AppColor.themeColor,
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AssetsPath.cartIconSvg,
          height: 24,
          width: 24,
        ),
      ),
    ],
  );
}
