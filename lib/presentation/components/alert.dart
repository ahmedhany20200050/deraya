import 'package:deraya_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';




enum SnakState { success, failed }

class OverLays {
  static Future dialog(BuildContext context,
      {required Widget child,
        RouteSettings? routeSettings,
        EdgeInsets? insetPadding,
        AlignmentGeometry? alignment,
        Color? backgroundColor}) {
    return showDialog(
        context: context,
        routeSettings: routeSettings,
        builder: (context) => Dialog(
          backgroundColor: backgroundColor,
          insetPadding: insetPadding,
          alignment: alignment,
          child: child,
        ));
  }

  static toast({required String text
    ,  Color? color
  }) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: color??AppColors.primary,
        textColor: color== Colors.white? AppColors.primary: Colors.white,
        fontSize: 16.0);
  }
}
