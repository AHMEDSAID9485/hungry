
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key, required this.text, this.onTap, this.width, this.color, this.color_text, this.size_text, this.radis_circle, this.height,
  });
final String text;
final void Function()? onTap;
final double? width;
final Color? color;
final Color? color_text;
final double? size_text;
final double? radis_circle;
final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 60,
        width: width,
        decoration: BoxDecoration(
          color: color ?? AppColor.whiteColor,
          borderRadius: BorderRadius.circular(radis_circle ?? 12),
        ),
        child: Center(
          child: CustomText(
            decoration: TextDecoration.none,
            text: text,
            fontSize: size_text ?? 20,
            fontWeight: FontWeight.bold,
            color: color_text ?? AppColor.blackColor,
          ),
        ),
      ),
    );
  }
}
