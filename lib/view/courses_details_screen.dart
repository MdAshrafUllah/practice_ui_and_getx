import 'package:elearning/Controller/courses_details_controller.dart';
import 'package:elearning/view/widget/course_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elearning/view/widget/AppBar.dart';

class CoursesDetailsScreen extends StatelessWidget {
  final CourseDetailsController courseController =
      Get.put(CourseDetailsController());

  CoursesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CourseDetailsController courseController = Get.find();
    return Scaffold(
      appBar: appBarStyle('Course Details'),
      body: Obx(() {
        if (courseController.courseDetails.value == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return buildCourseDetails(
            courseController.courseDetails.value!,
          );
        }
      }),
    );
  }
}
