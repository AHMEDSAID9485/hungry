import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/auth/widgets/CustomEditWidget.dart';
import 'package:hungry/features/auth/widgets/CustuomTextForProfilePage.dart';
import 'package:hungry/shared/CustomText.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  TextEditingController name = TextEditingController(text: 'Ahmed');
  TextEditingController email = TextEditingController(text: 'ahmedascahmed@gmail.com',);
  TextEditingController deliveryaddress = TextEditingController(text: 'Mopile');
  TextEditingController password = TextEditingController(text: '***********');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: 'Profile',
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
        backgroundColor: AppColor.blackColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Icon(Icons.settings, color: AppColor.whiteColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Center(
              child: Container(
                // تحديد حجم المربع بالكامل
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  // 1. الحواف الدائرية للمربع
                  borderRadius: BorderRadius.circular(24),

                  // 2. الإطار الأبيض (Border)
                  border: Border.all(
                    color: AppColor.primaryColor,
                    width: 2, // سمك الإطار الأبيض
                  ),

                  // 3. تأثير الإضاءة أو الظل الخفيف اللي حوالين المربع
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                // 4. قص الصورة عشان تاخد نفس انحناء الحواف الداخلية
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    20,
                  ), // أقل من الـ Container الخارجي بسنة عشان الإطار
                  child: Image.asset(
                    'assets/images/Profile_images/test.png',
                    fit: BoxFit
                        .cover, // عشان الصورة تملى المربع بالكامل بدون تشويه
                  ),
                ),
              ),
            ),
            Gap(10),
            CustuomTextForProfilePage(
              label: 'Name',
              textEditingController: name,
            ),
            Gap(10),
            CustuomTextForProfilePage(
              label: 'Email',
              textEditingController: email,
            ),
            Gap(10),
            CustuomTextForProfilePage(
              label: 'Delivery address',
              textEditingController: deliveryaddress,
            ),
            Gap(10),
            CustuomTextForProfilePage(
              label: 'Password',
              textEditingController: password,
            ),
            Gap(10),
            Divider(
              color: AppColor.primaryColor,
              radius: BorderRadius.circular(12),
              thickness: 2,
            ),
            Gap(10),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              tileColor: AppColor.primaryColor,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              leading: Image.asset(
                color: AppColor.whiteColor,
                'assets/images/payment_images/visa.png',
                width: 50,
                height: 50,
              ),
              title: const CustomText(
                text: 'Debit card',
                fontFamily: 'Poppins',
                fontSize: 16,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold,
              ),
              subtitle: const CustomText(
                text: '**** **** **** 1234',
                fontFamily: 'Poppins',
                fontSize: 14,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomEditWidget(text: 'Edit Profile',imageUrl: 'assets/images/Profile_images/edit.png',),
                CustomEditWidget(text: 'Log out',imageUrl: 'assets/images/Profile_images/logout.png',)

              ],
            )
          ],
        ),
      ),
    );
  }
}
