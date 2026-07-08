
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
     this.fontSize = 12,
     this.fontWeight = FontWeight.w900,
     this.color = AppColor.whiteColor, this.fontFamily, this.maxLines, this.overflow, this.decoration,
  });
final String text;
final double? fontSize;
final FontWeight? fontWeight;
final Color? color;
final String? fontFamily;
final int? maxLines;
final TextOverflow? overflow;
final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
  maxLines: maxLines, // أقصى عدد سطور هو سطر واحد
  overflow: overflow,
      text,
      style: TextStyle(
        decoration: decoration,
        fontFamily: fontFamily != null ? fontFamily : null ,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
