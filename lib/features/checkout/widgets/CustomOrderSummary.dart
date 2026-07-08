
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/Custom_Row_Text_key_and_value.dart';

class CustomOrderSummary extends StatelessWidget {
  const CustomOrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRowTextKeyAndValue(key_about_Row: 'Order', value_about_Row: '\$16.48',color_key: AppColor.graycolor2,color_value: AppColor.graycolor2,),
          Gap(10),
          CustomRowTextKeyAndValue(key_about_Row: 'Taxes', value_about_Row: '\$2.00',color_key: AppColor.graycolor2,color_value: AppColor.graycolor2,),
          Gap(10),
          CustomRowTextKeyAndValue(key_about_Row: 'Delivery fees', value_about_Row: '\$2.00',color_key: AppColor.graycolor2,color_value: AppColor.graycolor2,),
          Divider(color: AppColor.greyColor,thickness: 1,),
          Gap(5),
          CustomRowTextKeyAndValue(key_about_Row: 'Total', value_about_Row: '\$20.48',color_key: AppColor.blackColor,color_value: AppColor.blackColor,fontSize_key: 16,fontSize_value: 16,),
          Gap(10),
          CustomRowTextKeyAndValue(key_about_Row: 'Estimated delivery time', value_about_Row: '20-30 mins',color_key: AppColor.blackColor,color_value: AppColor.blackColor,fontSize_key: 12,fontSize_value: 12,)
        ],
      ),
    );
  }
}