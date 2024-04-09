import 'package:elearning/view/utils/app_colors.dart';
import 'package:elearning/view/widget/text_style.dart';
import 'package:flutter/material.dart';

class LearnListWidget extends StatefulWidget {
  final List<String> topics;

  const LearnListWidget({super.key, required this.topics});

  @override
  State<LearnListWidget> createState() => _LearnListWidgetState();
}

class _LearnListWidgetState extends State<LearnListWidget> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    List<String> displayedTopics =
        showMore ? widget.topics : widget.topics.take(2).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: displayedTopics.map((topic) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child:
                      Icon(Icons.circle, size: 8, color: AppColor.themeColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    topic,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
        if (widget.topics.length > 2)
          TextButton(
            onPressed: () {
              setState(() {
                showMore = !showMore;
              });
            },
            child: Text(
              showMore ? 'Show Less' : 'Show More',
              style: showMoreTextStyle(showMore),
            ),
          ),
      ],
    );
  }
}
