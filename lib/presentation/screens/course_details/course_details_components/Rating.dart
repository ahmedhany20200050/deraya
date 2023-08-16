

import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key, required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
      rating: rating,
      color: Colors.amber,
      allowHalfRating: false,
      defaultIconData: Icons.star_rate_rounded,
      filledIconData: Icons.star_rate_rounded,
      borderColor: Colors.grey.shade300,
    );
  }
}
