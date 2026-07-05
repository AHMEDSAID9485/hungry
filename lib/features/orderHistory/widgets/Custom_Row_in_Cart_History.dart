
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';

class Custom_Row_in_Cart_History extends StatelessWidget {
  const Custom_Row_in_Cart_History({
    super.key, required this.key_about_Row, required this.value_about_Row,
  });
final String key_about_Row, value_about_Row;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: '$key_about_Row:',fontSize: 15,fontWeight: FontWeight.bold,color: AppColor.blackColor,fontFamily: 'Roboto',overflow: TextOverflow.ellipsis,),
        CustomText(text: '$value_about_Row',fontSize: 15,fontWeight: FontWeight.bold,color: AppColor.primaryColor,fontFamily: 'Roboto',overflow: TextOverflow.ellipsis,),
      ],
    );
  }
}