import 'package:deraya_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TextFormFieldWidget extends StatefulWidget {
  final String? hintText, label, errorText;
  final TextInputType type;
  bool password;
  final bool expanded;
  Color activeBorderColor, borderColor, backgroundColor;
  bool floatingHint;
  int? maxLines;
  int? minLines;
  void Function()? onTap;
  FocusNode? focusNode;
  TextAlign textalign;
  int? maxLengh;
  TextDirection? textdirection;
  EdgeInsetsDirectional? contentPadding;
  double borderRadius;
  Widget? prefixIcon, suffixIcon, suffixWidget;
  TextEditingController? controller;
  InputDecoration? inputDecoration;
  ValueChanged<String>? onChanged;
  ValueChanged<String?>? onSaved;
  String? Function(String?)? validate;
  bool? enable;
  bool? readOnly;
  TextFormFieldWidget(
      {required this.onChanged,
        this.onSaved,
        this.readOnly,
        this.enable,
        this.validate,
        this.onTap,
        this.password = false,
        this.expanded = false,
        this.floatingHint = false,
        this.type = TextInputType.text,
        this.hintText = "",
        this.label,
        this.textalign = TextAlign.start,
        this.maxLengh,
        this.errorText,
        this.controller,
        this.activeBorderColor = AppColors.primary,
        this.borderRadius = 8.0,
        this.borderColor = AppColors.primary,
        this.backgroundColor = Colors.white,
        this.maxLines,
        this.minLines = 1,
        this.prefixIcon,
        this.suffixIcon,
        this.suffixWidget,
        this.inputDecoration,
        this.contentPadding,
        this.textdirection,
        Key? key})
      : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool? isPass;
  @override
  void initState() {
    isPass = widget.password ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      readOnly: widget.readOnly ?? false,
      enabled: widget.enable ?? true,
      validator: widget.validate,
      maxLength: widget.maxLengh,
      focusNode: widget.focusNode,

      controller: widget.controller,
      maxLines: widget.maxLines ?? 1,
      minLines: widget.minLines,
      // autofocus: false,
      // expands: widget.expanded,
      textAlign: widget.textalign,
      textDirection: widget.textdirection,
      style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 14.sp,
          fontFamily: "cairo",
          fontWeight: FontWeight.w600),
      decoration: widget.inputDecoration ??
          InputDecoration(
            // isDense: true,
              contentPadding: widget.contentPadding,

              filled: true,
              fillColor: widget.backgroundColor,
              prefixIcon: widget.prefixIcon,
              suffix: widget.suffixWidget,
              suffixIcon: widget.suffixIcon ??
                  (isPass!
                      ? IconButton(
                    onPressed: () {
                      setState(() {
                        widget.password = !widget.password;
                      });
                    },
                    icon: Icon(
                      widget.password
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off,
                      color: AppColors.blackColor,
                    ),
                  )
                      : widget.suffixIcon),
              errorText: widget.errorText,
              labelText: widget.label,
              //label: TextWidget(widget.label),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: widget.activeBorderColor, width: 1.0),
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.r))),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 1.0),
                  borderRadius:
                  BorderRadius.all(Radius.circular(30.r))),
              labelStyle: const TextStyle(color: AppColors.blackColor,fontFamily: "cairo",fontWeight: FontWeight.w400),
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12.sp,fontFamily: "cairo",fontWeight: FontWeight.w400),
              hintText: widget.hintText),
      keyboardType: widget.type,
      obscureText: widget.password,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      onTap: () {
        widget.onTap?.call();
      },
    );
  }
}