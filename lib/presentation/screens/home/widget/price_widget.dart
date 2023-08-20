import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: 82,
          height: 28,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.containerColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
      child:  TextWidget(
        title: "E£999.99",
        textAlign: TextAlign.center,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.blackColor,
      ),
    );
  }
}
