
import 'package:flutter/material.dart';
import 'package:hungry/features/product/data/lists/Side%20options_list.dart';
import 'package:hungry/features/product/widgets/Custom_card_Toppings.dart';

class List_of_sideOptions_widget extends StatelessWidget {
  const List_of_sideOptions_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     scrollDirection: Axis.horizontal,
      child: Row(
       children: List.generate(
         side_options_itemes.length, (index){
         return  Padding(
           padding: const EdgeInsets.only(right: 8),
           child: Custom_card_Toppings(
             image: side_options_itemes[index].image,
             name: side_options_itemes[index].name,
           ),
         );
       }),
      ),
    );
  }
}

