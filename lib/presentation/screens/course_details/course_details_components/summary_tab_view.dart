


import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import '../../../../domain/models/courses/courses_model.dart';
import 'course_details.dart';
import 'course_requirements.dart';
import 'course_skills.dart';

class SummaryTabView extends StatelessWidget {
  const SummaryTabView({
    super.key,
    required this.skills,
    required this.requirments, required this.course,
  });

  final List<String> skills;
  final List<String> requirments;
  final Courses course;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CourseDetails(course:this.course),
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
