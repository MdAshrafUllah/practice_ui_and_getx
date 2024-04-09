import 'package:elearning/data/model/course_details_model.dart';
import 'package:elearning/data/utility/urls.dart';
import 'package:http/http.dart';
import 'dart:convert';

class NetworkAPICaller {
  Future<CourseDetails> fetchCourseDetails() async {
    final response = await get(
      Uri.parse(Urls.courseDetails),
    );
    if (response.statusCode == 200) {
      return CourseDetails.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load course details');
    }
  }
}
