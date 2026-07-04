import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/product/widgets/CustomTrackShape.dart';
import 'package:hungry/features/product/widgets/List_of_sideOptions_widget.dart';
import 'package:hungry/features/product/widgets/custom_buttom.dart';
import 'package:hungry/features/product/widgets/list_of_toppings_widget.dart';
import 'package:hungry/shared/CustomText.dart';

class DetailsProductView extends StatefulWidget {
  DetailsProductView({super.key});

  @override
  State<DetailsProductView> createState() => _DetailsProductViewState();
}

class _DetailsProductViewState extends State<DetailsProductView> {
  double slider = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.whiteColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // slider image and text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/details_images/burer_details_test.png',
                  height: 250,
                  width: 170,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Customize ',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.blackColor,
                                fontWeight:
                                    FontWeight.bold, // الكلمة الأولى Bold
                              ),
                            ),
                            TextSpan(
                              text:
                                  'your Burger\nto Your Tastes. Ultimate\nExperience',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.graycolor2,
                                fontWeight: FontWeight.normal, // باقي النص عادي
                              ),
                            ),
                          ],
                        ),
                      ),
                      // CustomText(
                      //   text:
                      //       'Customize Your Burger\nto Your Tastes. Ultimate\nExperience',
                      //   fontSize: 14,
                      //   color: AppColor.blackColor,
                      // ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Spicy',
                            color: AppColor.blackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      Gap(10),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius:
                                8, // كبرنا قطر الكورة هنا لـ 15 (الافتراضي بيكون حوالي 10)
                            pressedElevation:
                                8, // الـ Shadow أو الارتفاع لما تضغط عليها
                          ),
                          // نستخدم الكلاس المخصص المكتوب في الأسفل لضبط البداية والنهاية تماماً
                          trackShape: CustomTrackShape(),
                          overlayShape: SliderComponentShape.noOverlay,
                        ),
                        child: Slider(
                          activeColor: AppColor.bluecolr,

                          // لتغيير لون الجزء المتبقي غير النشط ليطابق الصورة
                          inactiveColor: Colors.red,
                          value: slider,
                          onChanged: (s) {
                            setState(() {
                              slider = s;
                            });
                          },
                          max: 200,
                          min: 1,
                        ),
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/details_images/slider/🥶.png',
                            height: 15,
                            width: 15,
                          ),
                          Image.asset(
                            'assets/images/details_images/slider/🌶️.png',
                            height: 15,
                            width: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(15),
            // Toppings
            CustomText(
              text: 'Toppings',
              color: AppColor.brwoncolr,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            Gap(10),
            List_of_Toppings_widget(),
            Gap(35),
            // Side options
            CustomText(
              text: 'Side options',
              color: AppColor.brwoncolr,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            Gap(10),
            List_of_sideOptions_widget(),
            // price and add to cart button
            Gap(35),
            Container(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColor.whiteColor),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Total',
                        color: AppColor.brwoncolr,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$',
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold, // الكلمة الأولى Bold
                              ),
                            ),
                            TextSpan(
                              text: '12.99',
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.bold, // الكلمة الأولى Bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // navigation to cart page
                  CustomButtom(
                    text: 'Add to Cart',
                    width: 150,
                    color: AppColor.primaryColor,
                    size_text: 15,
                    radis_circle: 18,
                    color_text: AppColor.whiteColor,
                    onTap: () {},
                  ),
                ],
              ),
          ),
          ],
        ),
      ),
    );
  }
}
