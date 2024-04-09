import 'package:elearning/data/model/course_details_model.dart';
import 'package:elearning/data/services/network_caller.dart';
import 'package:get/get.dart';

class CourseDetailsController extends GetxController {
  var courseDetails = Rx<CourseDetails?>(null);

  @override
  void onInit() {
    fetchCourseDetails();
    super.onInit();
  }

  void fetchCourseDetails() async {
    try {
      var details = await NetworkAPICaller().fetchCourseDetails();
      courseDetails.value = details;
    } catch (e) {
      // Handle error
    }
  }
}
