import 'package:elearning/view/courses_details_screen.dart';
import 'package:elearning/view/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ELearningApp extends StatelessWidget {
  const ELearningApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Learning',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.themeColor),
        useMaterial3: true,
      ),
      home: CoursesDetailsScreen(),
    );
  }
}
