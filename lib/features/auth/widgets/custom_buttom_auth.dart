
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key, required this.text, this.onTap,
  });
final String text;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: CustomText(
            text: text,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.blackColor,
          ),
        ),
      ),
    );
  }
}
