import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefinitionRow extends StatelessWidget {
   DefinitionRow({Key? key, required this.title, required this.subTitle, this.secondOnTap})
      : super(key: key);
  final String title;
  final String subTitle;
  VoidCallback? secondOnTap;
  @override
  Widget build(BuildContext context) {
    return Row(


        children: [
      TextWidget(
        title: title,
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.primary,
      ),
      Spacer(),
      GestureDetector(
        onTap: secondOnTap,
        child: TextWidget(
          title: subTitle,
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.brownColor,
        ),
      ),
    ]);
  }
}
