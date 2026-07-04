
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/cart/widgets/Custom_widget_add_mius.dart';
import 'package:hungry/features/product/widgets/custom_buttom.dart';
import 'package:hungry/shared/CustomText.dart';

class Custom_Card_for_Cart extends StatelessWidget {
  const Custom_Card_for_Cart({
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset('assets/images/Home_images/burer_test.png',height: 100,width: 120,),
                CustomText(text: 'Hamburger',fontSize: 20,fontWeight: FontWeight.bold,color: AppColor.brwoncolr,fontFamily: 'Roboto',),
                CustomText(text: 'Veggie Burger',fontSize: 15,fontWeight: FontWeight.w500,color: AppColor.blackColor,fontFamily: 'Roboto',)
              ],
            )
         
          ,IntrinsicWidth(
            child: Column(
            
              children: [
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Custom_widget_add_mius(icon: Icons.remove, onTap: () {}),
                    Gap(20),
                    CustomText(text: '0',fontSize: 20,fontWeight: FontWeight.bold,color: AppColor.blackColor,fontFamily: 'Roboto',),
                    Gap(20),
                    Custom_widget_add_mius(icon: Icons.add, onTap: () {}),
                  ],
                ),
                Gap(25),
                CustomButtom(text: 'Remove',width: double.infinity,height: 40,color: AppColor.primaryColor,color_text: AppColor.whiteColor,size_text: 15,radis_circle: 20,onTap: () {},)
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
