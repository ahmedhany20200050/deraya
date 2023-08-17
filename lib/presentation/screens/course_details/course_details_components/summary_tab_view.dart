


import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import 'course_details.dart';
import 'course_requirements.dart';
import 'course_skills.dart';

class SummaryTabView extends StatelessWidget {
  const SummaryTabView({
    super.key,
    required this.skills,
    required this.requirments,
  });

  final List<String> skills;
  final List<String> requirments;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CourseDetails(),
        const Divider(
          thickness: 1,
          color: AppColors.primary,
          indent: 100,
          endIndent: 100,
        ),
        CourseSkills(skills),
        const Divider(
          thickness: 1,
          color: AppColors.primary,
          indent: 100,
          endIndent: 100,
        ),
        CourseRequirements(requirments),
      ],
    );
  }
}
