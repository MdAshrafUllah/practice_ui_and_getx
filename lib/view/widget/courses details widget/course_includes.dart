import 'package:flutter/material.dart';

Widget courseIncludes(String title, String link) {
  return Row(
    children: [
      Image.asset(link),
      const SizedBox(
        width: 5,
      ),
      Text(title)
    ],
  );
}
