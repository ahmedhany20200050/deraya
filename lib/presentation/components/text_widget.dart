import 'package:deraya_application/core/constant/colors.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String? title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool isOffer;
  // ignore: use_key_in_widget_constructors
  const TextWidget(
      {
        required this.title,
        this.fontSize,
        this.fontWeight,
        this.maxLines = 2,
        this.color,
        this.textAlign,
        this.isOffer = false});
  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight??  FontWeight.w500,
        fontFamily: "Montserrat-Arabic",
        decoration: isOffer ? TextDecoration.lineThrough : null,
        height: 1.2,
        color: color ?? ColorsManger.blackColor,
      ),
      textAlign: textAlign,
    );
  }
}
