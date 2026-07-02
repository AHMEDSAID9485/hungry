import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    required this.icon,
    this.obscureText = false,
    required this.controller,
  });
  final String text;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool visible = false;
  @override
  void initState() {
    visible = widget.obscureText;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter ${widget.text.toLowerCase()}';
        }
        return null;
      },
      controller: widget.controller,
      obscureText: visible,
      style: const TextStyle(color: AppColor.whiteColor, fontSize: 15),
      
      decoration: InputDecoration(
        
        errorBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: AppColor.redColor, width: 1.2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: AppColor.redColor, width: 1.5),
        ),
        hintTextDirection: TextDirection.ltr,
        hintText: widget.text,
        hintStyle: TextStyle(color: AppColor.greyColor, fontSize: 15),
        prefixIcon: Icon(widget.icon, color: AppColor.greyColor, size: 20),
        filled: true,
        suffixIcon: widget.obscureText
            ? GestureDetector(
                onTap: () {
                  visible = !visible;
                  setState(() {});
                },
                child: Icon(visible ? Icons.visibility : Icons.visibility_off,color: AppColor.whiteColor,),
              )
            : null,
        fillColor: AppColor.blackColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: AppColor.whiteColor, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: AppColor.whiteColor, width: 1.5),
        ),
      ),
    );
  }
}
