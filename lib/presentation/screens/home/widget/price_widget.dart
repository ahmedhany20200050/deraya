import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Container(
          width: 80.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: AppColors.containerColor,
            borderRadius: BorderRadius.circular(32.r),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 10.w, vertical: 16.w),
          child: Center(
            child: TextWidget(
              title: "E£999.99",
              maxLines: 2,
              textAlign: TextAlign.center,
              fontSize: 16.sp,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
