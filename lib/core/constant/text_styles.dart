
import 'package:flutter/material.dart';

import 'colors.dart';

abstract class TextStyles{
  static final underlinedTextStyle= TextStyle(
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
    fontSize: 20,
    decoration: TextDecoration.underline,
    decorationColor: Colors.deepOrange.shade300.withOpacity(0.4),
    decorationThickness:5,
  );
}