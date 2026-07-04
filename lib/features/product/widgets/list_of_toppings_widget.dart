
import 'package:flutter/material.dart';
import 'package:hungry/features/product/data/lists/toppings_list.dart';
import 'package:hungry/features/product/widgets/Custom_card_Toppings.dart';

class List_of_Toppings_widget extends StatelessWidget {
  const List_of_Toppings_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     scrollDirection: Axis.horizontal,
     
      child: Row(
       children: List.generate(
           toppings_itemes.length, (index){
         return  Padding(
           padding: const EdgeInsets.only(right: 8),
           child: Custom_card_Toppings(
             image: toppings_itemes[index].image,
             name: toppings_itemes[index].name,
           ),
         );
       }),
      ),
    );
  }
}
