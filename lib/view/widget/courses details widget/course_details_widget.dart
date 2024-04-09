import 'package:elearning/data/model/course_details_model.dart';
import 'package:elearning/view/widget/courses%20details%20widget/curriculum_list_builder.dart';
import 'package:elearning/view/widget/courses%20details%20widget/thumbnail.dart';
import 'package:flutter/material.dart';
import 'package:elearning/view/utils/assets_path.dart';
import 'package:elearning/view/widget/button.dart';
import 'package:elearning/view/widget/courses%20details%20widget/course_includes.dart';
import 'package:elearning/view/widget/courses%20details%20widget/date_format.dart';
import 'package:elearning/view/widget/courses%20details%20widget/description_section.dart';
import 'package:elearning/view/widget/courses%20details%20widget/rating.dart';
import 'package:elearning/view/widget/courses%20details%20widget/requrement_list.dart';
import 'package:elearning/view/widget/text_style.dart';
import 'package:elearning/view/widget/courses%20details%20widget/what_learn_list_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildCourseDetails(CourseDetails courseDetails) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThumbnailWidget(
              imageUrl: courseDetails.thumb.toString(),
              videoLink: courseDetails.videoLink.toString()),
          const SizedBox(
            height: 50,
          ),
          Text(
            courseDetails.title,
            style: titleTextStyle(),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            courseDetails.subtitle,
            style: subtitleTextStyle(),
          ),
          const SizedBox(
            height: 15,
          ),
          courseRating("5.0", '25'),
          const SizedBox(
            width: 5,
          ),
          Text(
            '9,591 students',
            style: totalStudentsTextStyle(),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'Mentor',
                style: mentorTextStyle(),
              ),
              const SizedBox(
                width: 5,
              ),
              Text("Ashutosh Pawar", style: mentorNameTextStyle()),
              //mentor
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset(
                AssetsPath.appointmentIconSvg,
                height: 12,
                width: 12,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Last update ${formatCurrentDate(courseDetails.lastUpdate)}',
                style: appointmentTextStyle(),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SvgPicture.asset(
                AssetsPath.languagesIconSvg,
                height: 12,
                width: 12,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'English',
                style: languagesTextStyle(),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "BDT ${courseDetails.coursePrice}",
            style: coursePricesTextStyle(),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 46,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: buttonStyleOne(),
              child: Text('Buy now', style: buttonOneTextStyle()),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: buttonStyleTwo(),
                  child: Text(
                    'Add to cart',
                    style: buttonTwoTextStyle(),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: buttonStyleTwo(),
                  child: Text(
                    'Add to wishlist',
                    style: buttonTwoTextStyle(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text('What you’ll learn ', style: sectionHeadingTextStyle()),
          const SizedBox(
            height: 5,
          ),
          LearnListWidget(
              topics: List<String>.from(courseDetails.whatYouWillLearn)),
          const SizedBox(
            height: 5,
          ),
          Text('Course Curriculum', style: sectionHeadingTextStyle()),
          CourseCurriculumList(curriculum: courseDetails.courseCurriculum),
          const SizedBox(
            height: 10,
          ),
          Text('This course includes', style: sectionHeadingTextStyle()),
          const SizedBox(
            height: 5,
          ),
          courseIncludes(
              "34.5 total hours on - demand video", AssetsPath.youtubeIconPng),
          const SizedBox(
            height: 5,
          ),
          courseIncludes("Support Files", AssetsPath.documentIconPng),
          const SizedBox(
            height: 5,
          ),
          courseIncludes("10 Articles", AssetsPath.bookIconPng),
          const SizedBox(
            height: 5,
          ),
          courseIncludes("Full lifetime access", AssetsPath.infinityIconPng),
          const SizedBox(
            height: 5,
          ),
          courseIncludes("Access on mobile, desktop, and TV",
              AssetsPath.smartphoneIconPng),
          const SizedBox(
            height: 5,
          ),
          courseIncludes(
              "Certificate of Completion", AssetsPath.certificateIconPng),
          const SizedBox(
            height: 50,
          ),
          Text('Requirements', style: sectionHeadingTextStyle()),
          const SizedBox(
            height: 5,
          ),
          buildRequirementList(courseDetails.requirements),
          const SizedBox(
            height: 15,
          ),
          Text('Description', style: sectionHeadingTextStyle()),
          DescriptionSection(
            description: courseDetails.description,
          )
        ],
      ),
    ),
  );
}
