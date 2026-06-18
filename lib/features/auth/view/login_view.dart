import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/auth/view/signup_view.dart';
import 'package:hungry/features/auth/widgets/custom_buttom_auth.dart';
import 'package:hungry/shared/Custom_text_form_field.dart';
import 'package:hungry/shared/CustomText.dart';

class LoginPage extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
   LoginPage({super.key});
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: formKey,
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
                CustomTextFormField(text: 'Email', icon: Icons.email_outlined, controller: emailController,),
                Gap(20),
                CustomTextFormField(
                  text: 'Password',
                  icon: Icons.lock_outline,
                  obscureText: true,
                  controller: passwordController,
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
                CustomButtom(text: 'Login', onTap: () {
                  if (formKey.currentState!.validate()) {
                    // Handle login logic
                  }
                },),
                 Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Don\'t have an account?',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color:AppColor.greyColor,
                    ),
                    GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                      },
                      child: CustomText(
                        text: 'Sign Up',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color:AppColor.whiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
