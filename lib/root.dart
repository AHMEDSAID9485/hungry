import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/auth/views/profile_view.dart';
import 'package:hungry/features/cart/views/cert_view.dart';
import 'package:hungry/features/home/views/home_view.dart';
import 'package:hungry/features/orderHistory/views/orderHistory_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _currentIndex = 0;
  
  final List<Widget> screens = const  [
    HomeView(),
    CartView(),
    OrderHistoryView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
         borderRadius: BorderRadius.circular(12)
        ),
        child: BottomNavigationBar(
  showSelectedLabels: false,
  showUnselectedLabels: false,
  backgroundColor: Colors.transparent,
  type: BottomNavigationBarType.fixed,
  currentIndex: _currentIndex,
  onTap: (index) {
    setState(() {
      _currentIndex = index;
    });
  },
  items: [
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/home_icon.png', 
        height: 24, 
        width: 24,
        // إذا كان الـ currentIndex يساوي 0 (يعني محدد) اجعله أبيض، وإلا اجعله رمادي
        color: _currentIndex == 0 ? AppColor.whiteColor : AppColor.blackColor,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/carr Background Removed 1.png', 
        height: 30, 
        width: 30,
        // إذا كان الـ currentIndex يساوي 1 اجعله أبيض، وإلا رمادي
        color: _currentIndex == 1 ? AppColor.whiteColor : AppColor.blackColor,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/Vector.png', 
        height: 24, 
        width: 24,
        // إذا كان الـ currentIndex يساوي 2 اجعله أبيض، وإلا رمادي
        color: _currentIndex == 2 ? AppColor.whiteColor : AppColor.blackColor,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/user.png', 
        height: 24, 
        width: 24,
        // إذا كان الـ currentIndex يساوي 3 اجعله أبيض، وإلا رمادي
        color: _currentIndex == 3 ? AppColor.whiteColor : AppColor.blackColor,
      ),
      label: '',
    ),
  ],
)),
    );
  }
}
