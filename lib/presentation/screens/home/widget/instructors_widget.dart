import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructorWidget extends StatelessWidget {
  const InstructorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 0.25.sh,
        child: ListView.builder(
          itemBuilder: (_, index) {
            return Padding(
              padding:  EdgeInsets.only(left: 8.0.w,top: 16.h),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                    radius: 80.r,
                  ),
                  16.ph,
                  TextWidget(
                    title: "CR7",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorsManger.primary,
                  ),
                ],
              ),
            );
          },
          itemCount: 8,
          scrollDirection: Axis.horizontal,
        ));
  }
}
