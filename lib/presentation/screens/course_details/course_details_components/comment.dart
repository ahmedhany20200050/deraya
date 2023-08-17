
import 'package:auto_size_text/auto_size_text.dart';
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

import '../../../../core/constant/colors.dart';
import 'Rating.dart';

class Comment extends StatelessWidget {
  Comment({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: AppColors.primary,
          width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: TextWidget(
                          title: "Omar Adel Mohammed",
                          maxLines: 1,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                      8.ph,
                      Rating(rating: 4,),
                    ],
                  ),
                  Spacer(),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: TextWidget(
                      title: "منذ يومين",
                      color: Colors.grey,
                    ),
                  ),
                ].reversed.toList(),
              ),
              16.ph,
              Text(
                "بصراحة أنا استدفت كتير جدا ف شغلي و ف الحياة العملية مع دراية ، الموقع حقيقي بيقدم خدمات كويسة جدا كمان .بصراحة أنا استدفت كتير جدا ف شغلي و ف الحياة العملية مع دراية ، الموقع حقيقي بيقدم خدمات كويسة جدا كمان ...بصراحة أنا استدفت كتير جدا ف شغلي و ف الحياة العملية مع دراية ، الموقع حقيقي بيقدم خدمات كويسة جدا كمان ... بصراحة أنا استدفت كتير جدا ف شغلي و ف الحياة العملية مع دراية ، الموقع حقيقي بيقدم خدمات كويسة جدا كمان ....",
                style: TextStyle(
                  color: AppColors.primary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

