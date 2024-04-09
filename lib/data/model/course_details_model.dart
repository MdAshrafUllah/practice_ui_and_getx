// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elearning/data/model/course_section_model.dart';

class CourseDetails {
  final String title;
  final String subtitle;
  final String rating;
  final String thumb;
  final String totalStudents;
  final String mentorId;
  final String lastUpdate;
  final String languages;
  final double coursePrice;
  final List<String> whatYouWillLearn;
  final List<CourseSection> courseCurriculum;
  final List<String> courseIncludes;
  final List<String> requirements;
  final String description;
  final String videoLink;

  CourseDetails({
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.thumb,
    required this.totalStudents,
    required this.mentorId,
    required this.lastUpdate,
    required this.languages,
    required this.coursePrice,
    required this.whatYouWillLearn,
    required this.courseCurriculum,
    required this.courseIncludes,
    required this.requirements,
    required this.description,
    required this.videoLink,
  });

  factory CourseDetails.fromJson(Map<String, dynamic> json) {
    var courseData = json['data'];

    return CourseDetails(
      title: courseData['title'] ?? '',
      subtitle: courseData['sub_title'] ?? '',
      rating: courseData['totalRating'] ?? '',
      thumb: courseData['thumb'] ?? '',
      totalStudents: courseData['total_students'] ?? '',
      mentorId: courseData['instructor_id'] ?? '',
      lastUpdate: courseData['updated_at'] ?? '',
      languages: courseData['languages'] ?? '',
      coursePrice: double.parse((courseData['price'] ?? 0).toString()),
      whatYouWillLearn: List<String>.from(courseData['learning_topic'] ?? []),
      courseCurriculum: (courseData['sections'] as List<dynamic>)
          .map((section) => CourseSection.fromJson(section))
          .toList(),
      courseIncludes: (courseData['course_includes'] is String)
          ? [courseData['course_includes']]
          : List<String>.from(courseData['course_includes'] ?? []),
      requirements: (courseData['requirements'] is String)
          ? [courseData['requirements']]
          : List<String>.from(courseData['requirements'] ?? []),
      description: courseData['description'] ?? '',
      videoLink: courseData['video_link_path'] ?? '',
    );
  }
}
