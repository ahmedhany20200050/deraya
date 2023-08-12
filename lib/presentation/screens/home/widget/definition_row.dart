import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefinitionRow extends StatelessWidget {
  const DefinitionRow({Key? key, required this.title, required this.subTitle})
      : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(


        children: [
      TextWidget(
        title: title,
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManger.primary,
      ),
      Spacer(),
      TextWidget(
        title: subTitle,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManger.brownColor,
      ),
    ]);
  }
}
