import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  String title;

  double width, height, radius;
  double? fontSize;
  FontWeight?fontWeight;
  Widget? child;
  Color textColor, buttonColor, borderColor, inkColor;
  void Function()? onTap;
  bool withBorder;

  ButtonWidget(
      {Key? key,
        this.title = "OK",
        this.width = 88.0,
        this.height = 50.0,
        this.onTap,
        this.fontWeight,
        this.child,
        this.fontSize,
        this.textColor = Colors.white,
        this.buttonColor = ColorsManger.primary,
        this.borderColor = ColorsManger.primary,
        this.inkColor = ColorsManger.primary,
        this.withBorder = false,
        this.radius = 80.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                  side: withBorder
                      ? BorderSide(color: borderColor)
                      : const BorderSide(color: Colors.transparent)))),
      onPressed: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: inkColor,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: child ??
            Container(
              constraints: BoxConstraints(minWidth: width, minHeight: height),
              // min sizes for Material buttons
              alignment: Alignment.center,
              child: TextWidget(
                title: title,
                fontSize: fontSize ?? 16.sp,
                fontWeight: fontWeight??FontWeight.w500,
                textAlign: TextAlign.center,
                color: textColor,
              ),
            ),
      ),
    );
  }
}
