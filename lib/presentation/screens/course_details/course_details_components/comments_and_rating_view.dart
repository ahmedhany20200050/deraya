import 'package:deraya_application/presentation/screens/course_details/course_details_components/general_rating.dart';
import 'package:flutter/material.dart';
import 'comment.dart';

class CommentsAndRatingView extends StatelessWidget {
  const CommentsAndRatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GeneralRating(),
        Comment(),
        Comment(),
        Comment(),
      ],
    );
  }
}
