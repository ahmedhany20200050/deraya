

import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class CoursesTabBar extends StatelessWidget {
  const CoursesTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightBackground,
      height: 40,
      child: TabBar(

        padding: EdgeInsets.all(0),
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: AppColors.primary,
        labelPadding: EdgeInsets.all(0),
        indicatorPadding: EdgeInsets.all(0),
        indicator: ShapeDecoration(
          color: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        tabs: [
          Container(
            child: Tab(
              text: "الملخص",
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
          Container(
            child: Tab(
              text: "المحتوي",
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
          Container(
            child: Tab(
              text: "التقييمات",
            ),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
