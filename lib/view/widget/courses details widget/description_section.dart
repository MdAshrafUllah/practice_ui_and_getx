import 'package:elearning/view/widget/text_style.dart';
import 'package:flutter/material.dart';

class DescriptionSection extends StatefulWidget {
  final String description;

  const DescriptionSection({super.key, required this.description});

  @override
  State<DescriptionSection> createState() => _DescriptionSectionState();
}

class _DescriptionSectionState extends State<DescriptionSection> {
  bool showMore = false;

  void _toggleShowMore() {
    setState(() {
      showMore = !showMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        Text(
          showMore
              ? widget.description
              : '${widget.description.substring(0, 200)}...',
        ),
        const SizedBox(height: 10.0),
        TextButton(
          onPressed: () {
            _toggleShowMore();
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
