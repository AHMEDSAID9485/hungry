import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/orderHistory/widgets/Custom_Cart_Orders.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.5,backgroundColor: AppColor.whiteColor,elevation: 0,),
     body: Padding(
       padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 5),
       
       child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
             return Custom_Cart_Orders() ;
            },
            itemCount: 5,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Gap(15);
            },),
          ),
         
        ],
       ),
     ),
     );
  }
}
