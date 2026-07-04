
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';

class Custom_widget_add_mius extends StatelessWidget {
  const Custom_widget_add_mius({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        // height: 40,
        // width: 40,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Icon(icon, color: AppColor.whiteColor,),
      ),
    );
  }
}