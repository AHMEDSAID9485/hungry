import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/Custom_text_form_field.dart';
import 'package:hungry/shared/CustomText.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap(80),
              SvgPicture.asset(
                'assets/logo/Hungry_.svg',
                height: 40,
                width: 40,
              ),
              CustomText(
                text: 'Welcome back!',
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: AppColor.whiteColor,
              ),
              Gap(50),
              CustomTextFormField(text: 'Email', icon: Icons.email_outlined),
              Gap(20),
              CustomTextFormField(
                text: 'Password',
                icon: Icons.lock_outline,
                obscureText: true,
              ),
              Gap(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: 'Forgot Password?',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:AppColor.greyColor,
                  ),
                ],
              ),
              Gap(10),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: CustomText(
                      text: 'Login',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
