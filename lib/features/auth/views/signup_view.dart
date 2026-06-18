import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/auth/widgets/custom_buttom_auth.dart';
import 'package:hungry/features/home/views/home_view.dart';
import 'package:hungry/root.dart';
import 'package:hungry/shared/Custom_text_form_field.dart';
import 'package:hungry/shared/CustomText.dart';

class SignupView extends StatelessWidget {

  SignupView({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
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
                    text: 'Create an account',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: AppColor.whiteColor,
                  ),
                  Gap(50),
                  CustomTextFormField(text: 'Name', icon: Icons.person_outline, controller: nameController,),
                  Gap(20),
                  CustomTextFormField(
                    text: 'Email',
                    icon: Icons.email_outlined,
                    controller: emailController,
                  ),
                  Gap(20),
                  CustomTextFormField(
                    text: 'Password',
                    icon: Icons.lock_outline,
                    obscureText: true,
                    controller: passwordController,
                  ),
                   Gap(20),
                  CustomTextFormField(
                    text: 'Confirm Password',
                    icon: Icons.lock_outline,
                    obscureText: true,
                    controller: confirmPasswordController,
                  ),
                  Gap(10),
                  CustomButtom(text: 'Sign Up', onTap: () {
                    if (formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Root()));
                    }
                  },),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Already have an account?',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color:AppColor.greyColor,
                      ),
                      Gap(5),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CustomText(
                          text: 'Login',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
