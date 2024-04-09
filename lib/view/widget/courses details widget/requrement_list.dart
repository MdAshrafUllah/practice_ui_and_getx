import 'package:elearning/view/utils/app_colors.dart';
import 'package:elearning/view/widget/text_style.dart';
import 'package:flutter/material.dart';

Widget buildRequirementList(List<String> topics) {
  return Column(
    children: topics.map((topic) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Icon(
              Icons.circle,
              size: 8,
              color: AppColor.themeColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              topic,
              style: learnTextStyle(),
            ),
          ),
        ],
      );
    }).toList(),
  );
}
