import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';

class CategoriesListWidget extends StatefulWidget {
  const CategoriesListWidget({super.key});

  @override
  State<CategoriesListWidget> createState() => _CategoriesListWidgetState();
}
final List<String> category = const [
  'All',
  'Combos',
  'Sliders',
  'Classic'
 ];

  int currentIndex = 0;
class _CategoriesListWidgetState extends State<CategoriesListWidget> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              height:40 ,
               child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                     onTap: (){
                      currentIndex = index;
                     setState(() {
                       
                     });
                     },
                     child: Container(
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 1),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: currentIndex == index ? AppColor.primaryColor : AppColor.graycolor3
                       ),
                       child: Center(child: CustomText(text: category[index]))
                     )
                   );
                },),
             );
  }
}
