
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: AppColor.graycolor2,
      elevation: 2,
      borderRadius: BorderRadius.circular(15),
      child: TextField(
        cursorColor: AppColor.primaryColor,
        decoration: InputDecoration(
          hint: Text('Search'),
          prefixIcon: Icon(Icons.search,size: 25,color: AppColor.blackColor,),
          focusedBorder: OutlineInputBorder(
             borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          )
        ),
      ),
    );
  }
}