import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/product/widgets/CustomTrackShape.dart';
import 'package:hungry/features/product/widgets/List_of_sideOptions_widget.dart';
import 'package:hungry/shared/CustomBottomSheet.dart';
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
                          children:const [
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
                     const Gap(10),
                     const Row(
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
                      const Gap(10),
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
                     const Gap(10),
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
            const Gap(15),
            // Toppings
           const  CustomText(
              text: 'Toppings',
              color: AppColor.brwoncolr,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
           const Gap(10),
            List_of_Toppings_widget(),
          const  Gap(35),
            // Side options
          const  CustomText(
              text: 'Side options',
              color: AppColor.brwoncolr,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const Gap(10),
            List_of_sideOptions_widget(),
            // price and add to cart button
            Spacer(),
            CustomBottomSheet(text: 'Add to Cart', onTap: () {
              // Handle the "Add to Cart" button tap here
            },)
            
          ],
        ),
      ),
    );
  }
}
