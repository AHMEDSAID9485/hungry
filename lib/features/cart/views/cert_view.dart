import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/cart/widgets/Custom_Card_for_Cart.dart';
import 'package:hungry/features/checkout/views/Checkout_view.dart';
import 'package:hungry/shared/CustomBottomSheet.dart';


// ignore: must_be_immutable
class CartView extends StatefulWidget {
   CartView({super.key});
late int quantity = 0;
late int itemCount = 5;
late List <int> quantityList;

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  void initState() {
widget.quantityList = List.generate(5, (index) => 1);
    // TODO: implement initState
    super.initState();
  }
 void onAdd(int index) {
  setState(() {
 widget.quantityList[index]++;
  });
 }

  void onMins(int index) {
  setState(() {
    if (widget.quantityList[index] > 0) {
      widget.quantityList[index]--;
    }
  });
  }
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
              return Custom_Card_for_Cart(
                number: widget.quantityList[index],
                imagePath: 'assets/images/Home_images/burer_test.png',
                name: 'Hamburger',
                description: 'Veggie Burger',
                onAdd: () => onAdd(index),
                onMins: () => onMins(index),
                onRemove: (){},
              );
            },
            itemCount: 5,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Gap(15);
            },),
          ),
          // total price and checkout button
          CustomBottomSheet(
            text: 'Checkout',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  CheckoutView()));
            },
          ),
        ],
       ),
     ),
     );
  }
}
