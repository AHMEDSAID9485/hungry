
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
     this.fontSize = 12,
     this.fontWeight = FontWeight.w900,
     this.color = AppColor.whiteColor, this.fontFamily,
  });
final String text;
final double? fontSize;
final FontWeight? fontWeight;
final Color? color;
final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
  maxLines: 1, // أقصى عدد سطور هو سطر واحد
  overflow: TextOverflow.ellipsis,
      text,
      style: TextStyle(

        fontFamily: fontFamily != null ? fontFamily : null ,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
