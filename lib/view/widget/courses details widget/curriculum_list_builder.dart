import 'package:elearning/data/model/course_section_model.dart';
import 'package:elearning/view/utils/app_colors.dart';
import 'package:elearning/view/widget/button.dart';
import 'package:elearning/view/widget/text_style.dart';
import 'package:flutter/material.dart';

class CourseCurriculumList extends StatefulWidget {
  final List<CourseSection> curriculum;

  const CourseCurriculumList({super.key, required this.curriculum});

  @override
  State<CourseCurriculumList> createState() => _CourseCurriculumListState();
}

class _CourseCurriculumListState extends State<CourseCurriculumList> {
  bool showAllSections = false;

  @override
  Widget build(BuildContext context) {
    final visibleCurriculum = showAllSections
        ? widget.curriculum
        : widget.curriculum.take(2).toList();

    return Column(
      children: [
        Column(
          children: List.generate(visibleCurriculum.length, (index) {
            CourseSection section = visibleCurriculum[index];
            return Card(
              color: Colors.white,
              child: ExpansionTile(
                textColor: AppColor.themeColor,
                shape: const Border(),
                collapsedTextColor: AppColor.titleColor,
                title: Text(
                  section.topic,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                children: [
                  Column(
                    children: section.lessons.map((lesson) {
                      return ListTile(
                        leading: const Icon(Icons.play_arrow_outlined,
                            color: AppColor.themeColor),
                        title: Text(
                          lesson.lectureTitle,
                          style: const TextStyle(fontSize: 14),
                        ),
                        trailing: const Icon(Icons.lock_outline,
                            color: AppColor.themeColor),
                        onTap: () {
                          // Handle lesson onTap
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            );
          }),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                showAllSections = !showAllSections;
              });
            },
            style: buttonStyleTwo(),
            child: Text(
              showAllSections == true
                  ? 'Show Less'
                  : widget.curriculum.length <= 2
                      ? 'No more sections'
                      : '${widget.curriculum.length - 2} more sections',
              style: buttonTwoTextStyle(),
            ),
          ),
        ),
      ],
    );
  }
}
