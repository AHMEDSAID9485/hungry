
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';
import 'package:hungry/shared/custom_buttom.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key, required this.text, this.onTap,
  });
final String text;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColor.whiteColor),
                child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // price
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Total',
              color: AppColor.brwoncolr,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '\$',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold, // الكلمة الأولى Bold
                    ),
                  ),
                  TextSpan(
                    text: '12.99',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColor.blackColor,
                      fontWeight: FontWeight.bold, // الكلمة الأولى Bold
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // navigation to cart page
        CustomButtom(
          text: text,
          width: 150,
          color: AppColor.primaryColor,
          size_text: 15,
          radis_circle: 18,
          color_text: AppColor.whiteColor,
          onTap: onTap,
        ),
      ],
    ),
              );
  }
}
