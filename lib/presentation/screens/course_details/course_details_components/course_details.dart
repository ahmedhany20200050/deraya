

import 'package:deraya_application/domain/models/courses/courses_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/text_styles.dart';
import '../../../components/text_widget.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key, required this.course,
  });
  final Courses course;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "تفاصيل الكورس :",
          style: TextStyles.brownTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(Icons.language_outlined, color: AppColors.primary),
            SizedBox(
              width: 16,
            ),
            TextWidget(
              title: "اللغة : ${course.language} ",
              color: AppColors.primary,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.slow_motion_video,
              color: AppColors.primary,
            ),
            SizedBox(
              width: 16,
            ),
            TextWidget(
              title: "${course.lectures} فيديو (${course.hours} ساعة)",
              color: AppColors.primary,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.assignment_outlined,
              color: AppColors.primary,
            ),
            SizedBox(
              width: 16,
            ),
            TextWidget(
              title: "${course.lectures} موضوع",
              color: AppColors.primary,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.edit,
              color: AppColors.primary,
            ),
            SizedBox(
              width: 16,
            ),
            TextWidget(
              title: "0 اختبار و متابعة",
              color: AppColors.primary,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.sensors_rounded,
              color: AppColors.primary,
            ),
            SizedBox(
              width: 16,
            ),
            TextWidget(
              title: "كورس أونلاين بالكامل",
              color: AppColors.primary,
            ),
          ],
        ),
      ],
    );
  }
}
