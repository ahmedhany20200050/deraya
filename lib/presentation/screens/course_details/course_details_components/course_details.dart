

import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/text_styles.dart';
import '../../../components/text_widget.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
              title: "اللغة : العربية ",
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
              title: "15 فيديو (23 ساعة)",
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
              title: "12 موضوع",
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
              title: "5 اختبار و متابعة",
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
