import 'package:elearning/view/widget/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget courseRating(String rating, String review) {
  return Row(
    children: [
      Text(
        rating,
        style: ratingTextStyle(),
      ),
      const SizedBox(
        width: 5,
      ),
      RatingBar.builder(
        itemSize: 15,
        initialRating: 5,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {},
      ),
      const SizedBox(
        width: 2,
      ),
      Text(
        "($review)",
        style: reviewCountTextStyle(),
      ),
    ],
  );
}
