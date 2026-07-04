import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/features/home/widgets/Card_widget.dart';
import 'package:hungry/features/home/widgets/CategoryCardWidget.dart';
import 'package:hungry/features/home/widgets/SearchWidget.dart';
import 'package:hungry/features/home/widgets/logo_and_Appbar.dart';
import 'package:hungry/features/product/views/details_product_view.dart';
import 'package:hungry/shared/CustomText.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(35),
              // AppBar logo
              Logo_and_appbar(),
              // hello user
              CustomText(
                text: 'Hello, Rich Sonic',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor.graycolor2,
                fontFamily: 'Poppins',
              ),
              Gap(10),
              // Search
              SearchWidget(),
              Gap(10),
              // CategoriesList
              CategoriesListWidget(),
              Gap(10),
              // Gridview for card widget
              Expanded(
                child: GridView.builder(
                  itemCount: 15,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                   // mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsProductView()));
                      },
                      child: CardWidget(image: "assets/images/Home_images/burer_test.png",nameItem: "2 Piece Fried Chicken",rate: "10.00",type: "Combo Meal"));
                  },
                ),
              ),
              Gap(5),
             ],
          ),
        ),
      ),
    );
  }
}

