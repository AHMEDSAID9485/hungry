import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/auth/view/login_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),()=> Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>  LoginPage())));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Spacer(),
          SvgPicture.asset('assets/logo/Hungry_.svg'),
          Spacer(),
          Image.asset('assets/splash/splash.png')
          ]),
      ),
    );
  }
}
