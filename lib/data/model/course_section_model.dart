import 'package:elearning/data/model/course_leasson_model.dart';

class CourseSection {
  final int id;
  final String topic;
  final String description;
  final List<CourseLesson> lessons;

  CourseSection({
    required this.id,
    required this.topic,
    required this.description,
    required this.lessons,
  });

  factory CourseSection.fromJson(Map<String, dynamic> json) {
    var lessonsList = json['lessons'] as List;
    List<CourseLesson> lessons =
        lessonsList.map((lesson) => CourseLesson.fromJson(lesson)).toList();

    return CourseSection(
      id: json['id'],
      topic: json['topic'],
      description: json['description'],
      lessons: lessons,
    );
  }
}
