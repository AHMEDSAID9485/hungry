
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/Custom_Row_Text_key_and_value.dart';
import 'package:hungry/shared/custom_buttom.dart';

class Custom_Cart_Orders extends StatelessWidget {
  const Custom_Cart_Orders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
          color: AppColor.whiteColor,
          shadowColor: AppColor.greyColor,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
               Image.asset('assets/images/Home_images/burer_test.png',height: 100,width: 120,),
                CustomRowTextKeyAndValue(
     key_about_Row: 'Order name',
     value_about_Row: 'Hamburger',
                ),
                Gap(10),
                CustomRowTextKeyAndValue(
     key_about_Row: 'Total price',
     value_about_Row: '\$25.00',
                ),
                Gap(10),
                CustomRowTextKeyAndValue(
     key_about_Row: 'Status',
     value_about_Row: 'Delivered',
                ),
                Gap(10),
                CustomButtom(text: 'Order Again',width: double.infinity,height: 40,color: AppColor.graycolor2.withOpacity(0.8),color_text: AppColor.whiteColor,size_text: 15,radis_circle: 20,onTap: (){},)
              ],
            ),
          ),
        );
  }
}
