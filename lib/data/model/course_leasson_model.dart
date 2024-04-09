class CourseLesson {
  final String lectureTitle;
  final String videoResource;
  final String videoLinkPath;
  final String videoSourceType;

  CourseLesson({
    required this.lectureTitle,
    required this.videoResource,
    required this.videoLinkPath,
    required this.videoSourceType,
  });

  factory CourseLesson.fromJson(Map<String, dynamic> json) {
    return CourseLesson(
      lectureTitle: json['lecture_title'],
      videoResource: json['video_resource'] ?? '',
      videoLinkPath: json['video_link_path'] ?? '',
      videoSourceType: json['video_source_type'] ?? '',
    );
  }
}
