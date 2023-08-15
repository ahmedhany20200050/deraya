
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/text_styles.dart';

class CourseRequirements extends StatelessWidget {
  final List<String> requirementsText;
  List<Widget> requirementsWidgets = [];
  CourseRequirements(this.requirementsText, {super.key}) {
    for (String text in requirementsText) {
      requirementsWidgets.add(Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.check,
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF3E6787),
                  fontSize: 15,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.38,
                ),
              ),
            ),
          ],
        ),
      ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "متطلبات الكورس :",
          style: TextStyles.brownTextStyle,
        ),
        10.ph,
        Column(
          children: requirementsWidgets,
        ),
      ],
    );
  }
}
