import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(

      height: 0.45.sh,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1.w/1.4.w,
            mainAxisSpacing: 10.h,
            crossAxisSpacing: 10.w


        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              CircleAvatar(
                backgroundImage:const AssetImage(
                  "assets/images/low.png",
                ),
                radius: 60.r,
              )  ,
              14.ph,
              TextWidget(
                title: "القانون",
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,

              )
            ],
          );
        },
        itemCount: 8,
      ),
    );
  }
}
