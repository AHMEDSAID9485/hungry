
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';

class Custom_card_Toppings extends StatelessWidget {
  const Custom_card_Toppings({
    super.key, required this.image, required this.name,
  });
 final String image;
 final String name;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      shadowColor: AppColor.graycolor2,
      elevation: 3,
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColor.brwoncolr
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.whiteColor
              ),
              child: Image.asset(image,height: 50,width: 50,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: name,color: AppColor.whiteColor,fontSize: 10,overflow: TextOverflow.ellipsis,),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: AppColor.redColor,
                      child: Icon(Icons.add,size: 20,color: AppColor.whiteColor,),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}