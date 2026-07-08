import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/checkout/widgets/CustomOrderSummary.dart';
import 'package:hungry/features/checkout/widgets/SuccessShowDialog.dart';
import 'package:hungry/shared/CustomBottomSheet.dart';
import 'package:hungry/shared/CustomText.dart';


class CheckoutView extends StatefulWidget {
 const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  String selectedPaymentMethod = 'cash';
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.whiteColor),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const CustomText(
              text: 'Order summary',
              fontFamily: 'Poppins',
              fontSize: 20,
              color: AppColor.blackColor,
              fontWeight: FontWeight.bold,
            ),
           const Gap(10),
            const CustomOrderSummary(),
           const Gap(30),
           const CustomText(
              text: 'Payment methods',
              fontFamily: 'Poppins',
              fontSize: 20,
              color: AppColor.blackColor,
              fontWeight: FontWeight.bold,
            ),
          const  Gap(10),
            ListTile(
              onTap: () {
                setState(() {
                 selectedPaymentMethod = 'cash';
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: AppColor.brwoncolr,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              leading: Image.asset(
                'assets/images/payment_images/dollar.png',
                width: 50,
                height: 50,
              ),
              title: CustomText(
                text: 'Cash on delivery',
                fontFamily: 'Poppins',
                fontSize: 16,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold,
              ),
              subtitle: const CustomText(
                text: 'Pay with cash',
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.normal,
              ),
              trailing: Radio<String>(
                value: 'cash',
                groupValue: selectedPaymentMethod,
                activeColor: AppColor.whiteColor,
                onChanged: (value) {
                  setState(() {
                    selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            Gap(10),
            ListTile(
              onTap: () {
                setState(() {
                  selectedPaymentMethod = 'Card';
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: AppColor.graycolor3,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              leading:  Image.asset(
                'assets/images/payment_images/visa.png',
                width: 50,
                height: 50,
              ),
              title: const CustomText(
                text: 'Debit card',
                fontFamily: 'Poppins',
                fontSize: 16,
                color: AppColor.blackColor,
                fontWeight: FontWeight.bold,
              ),
              subtitle: const CustomText(
                text: '**** **** **** 1234',
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColor.blackColor,
                fontWeight: FontWeight.bold,
              ),
              trailing: Radio<String>(
                value:  'Card',
                groupValue: selectedPaymentMethod,
                activeColor: AppColor.whiteColor,
                onChanged: (value) {
                  setState(() {
                        selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const Gap(4),
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (c){
                  setState(() {
                    isChecked = c!;
                  });
                },activeColor: AppColor.redColor,)
                ,const CustomText(
                  text: 'Save card details for future payments',
                 // fontFamily: 'Poppins',
                  fontSize: 14,
                  color: AppColor.graycolor2,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
            const Spacer(),
            CustomBottomSheet(
              text: 'Pay Now',
              onTap: () {
                showDialog(context: context, builder: (context){
                 return SuccessShowDialog();
                });
              },
            ),
          ],
        ),
      ),
      
    );
  }
}
