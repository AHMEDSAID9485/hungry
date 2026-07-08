
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';

class CustomRowTextKeyAndValue extends StatelessWidget {
  const CustomRowTextKeyAndValue({
    super.key, required this.key_about_Row, required this.value_about_Row, this.color_key, this.color_value, this.fontSize_key, this.fontSize_value,
  });
final String key_about_Row, value_about_Row;
final Color? color_key,color_value;
final double? fontSize_key,fontSize_value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: '$key_about_Row:',fontSize: fontSize_key ?? 15,fontWeight: FontWeight.bold,color: color_key ?? AppColor.blackColor,fontFamily: 'Roboto',overflow: TextOverflow.ellipsis,),
        CustomText(text: '$value_about_Row',fontSize: fontSize_value ?? 15,fontWeight: FontWeight.bold,color:color_value ?? AppColor.primaryColor,fontFamily: 'Roboto',overflow: TextOverflow.ellipsis,),
      ],
    );
  }
}