
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_components/Rating.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GeneralRating extends StatelessWidget {
  const GeneralRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: TextWidget(
                  title: "4.5",
                  color: AppColors.primary,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  maxLines: 1,

                ),
              ),
            ),
            Column(
              children: [
                Rating(rating: 4),
                8.ph,
                TextWidget(
                  title: "حاز هذا الكورس علي 65.656 تقييم",
                  color: Colors.grey,
                ),
              ],
            ),
            Spacer(),
          ].reversed.toList(),
        ),
        8.ph,
        RatingLine(
          numberOfRaters: 6523,
          totalNumberOfRaters: 15565,
          ratingTypeText: "ممتاز",
        ),
        8.ph,
        RatingLine(
          numberOfRaters: 6523,
          totalNumberOfRaters: 15565,
          ratingTypeText: "جيد جدا",
        ),
        8.ph,
        RatingLine(
          numberOfRaters: 4556,
          totalNumberOfRaters: 15565,
          ratingTypeText: "جيد",
        ),
        8.ph,
        RatingLine(
          numberOfRaters: 777,
          totalNumberOfRaters: 15565,
          ratingTypeText: "مقبول",
        ),
        8.ph,
        RatingLine(
          numberOfRaters: 77,
          totalNumberOfRaters: 15565,
          ratingTypeText: "ردئ",
        ),
      ],
    );
  }
}

class RatingLine extends StatelessWidget {
  final String ratingTypeText;
  final int numberOfRaters;
  final int totalNumberOfRaters;
  const RatingLine({
     required this.ratingTypeText, required this.numberOfRaters, required this.totalNumberOfRaters,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextWidget(
            title: "$numberOfRaters",
            textAlign: TextAlign.left,
            color: AppColors.primary,
          ),
        ),
        LinearPercentIndicator(
            width: MediaQuery.of(context).size.width*0.6,
            lineHeight: 8.0,
            percent: numberOfRaters.toDouble()/totalNumberOfRaters.toDouble(),
            progressColor: Colors.amber,
          backgroundColor: Colors.grey.shade300,
          barRadius: Radius.circular(20),
        ),
        Expanded(child: TextWidget(title:ratingTypeText,color: AppColors.primary,maxLines: 1,)),

      ],
    );
  }
}
