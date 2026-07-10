
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';

class CustuomTextForProfilePage extends StatelessWidget {
  const CustuomTextForProfilePage({
    super.key, required this.label, required this.textEditingController,
  });
final String label;
final TextEditingController textEditingController ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorColor: AppColor.redColor,
     decoration: InputDecoration(
       labelText: label,
       labelStyle: TextStyle(color: Colors.black),
       focusedBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(12),
         borderSide: BorderSide(color: AppColor.primaryColor)
       ),
       enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(color: AppColor.primaryColor),
         borderRadius: BorderRadius.circular(12)
       )
     ),
    );
  }
}