
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';

class CustomEditWidget extends StatelessWidget {
  const CustomEditWidget({
    super.key, required this.text, required this.imageUrl,
  });
final String text,imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(

     // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      height: 70,
      width: 150,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColor.graycolor2,width: 2
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: '$text ',fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Roboto',),
          Image.asset(imageUrl,color: AppColor.whiteColor,height: 20,width: 20,)
        ],
      ),
    );
  }
}
