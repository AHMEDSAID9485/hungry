
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';
import 'package:hungry/shared/custom_buttom.dart';

class SuccessShowDialog extends StatelessWidget {
  const SuccessShowDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 200),
      child: Container(
       decoration: BoxDecoration(
         color: AppColor.whiteColor,
         borderRadius: BorderRadius.circular(30),
       ),
       child: Column(children: [
       const  Gap(10),
         CircleAvatar(
           radius: 40,
           backgroundColor: AppColor.primaryColor,
           child: Image.asset('assets/images/payment_images/Group 58.png',height: 50,width: 50,),
         ),
         const Gap(10),
        const CustomText(
           decoration: TextDecoration.none,
           text: 'Success !',
           fontFamily: 'Poppins',
           fontSize: 40,
           color: AppColor.primaryColor,
           fontWeight: FontWeight.bold,
         ),
       const  Gap(10),
        const  CustomText(
           overflow: TextOverflow.visible,
           maxLines: 3,
           decoration: TextDecoration.none,
           text: 'Your payment was successful\nA receipt for this purchase has\n      been sent to your email.',
           fontFamily: 'Poppins',
           fontSize: 17,
           color: AppColor.graycolor3,
         ),
         const Gap(15),
         CustomButtom(text: 'Go Back',onTap: (){
         Navigator.pop(context);
        },width: 200,height: 60,color: AppColor.primaryColor,color_text: AppColor.whiteColor,size_text: 20,radis_circle: 15,)
       ],),
      ),
    );
  }
}
