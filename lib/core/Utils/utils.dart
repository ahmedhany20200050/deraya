
import 'package:deraya_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Utils {

  static void openScreen(BuildContext? context, Widget screen,
      {bool replacment = false, bool remove = false}) {
    if (context == null) {
      return;
    }

    if (remove) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => screen),
            (route) => false,
      );
    } else if (replacment) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => screen));
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
    }
  }




  static Widget backWidget(BuildContext context,
      {VoidCallback? onBack, bool arabicLang = true}) {
    return GestureDetector(
      onTap: () {
        if (onBack != null) {
          onBack.call();
        }
        Navigator.pop(context);
      },
      child:Icon(
        Icons.arrow_back_ios,
        color: ColorsManger.primary,
        size: 30.w,
      ),
    );
  }
}