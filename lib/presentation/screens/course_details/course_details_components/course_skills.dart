

import 'package:deraya_application/core/Utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/text_styles.dart';
import '../../../components/text_widget.dart';

class CourseSkills extends StatelessWidget {
  final List<Widget> skills = [];
  final List<String> textData;
  CourseSkills(this.textData, {super.key}) {
    for (String text in textData) {
      skills.add(Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          color: AppColors.primary.withOpacity(0.1),
          child: TextWidget(
            title: text,
            color: AppColors.primary,
          ),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "مهارات الكورس :",
          style: TextStyles.brownTextStyle,
        ),
        10.ph,
        Wrap(
          children: skills,
          spacing: 10,
        ),
      ],
    );
  }
}
