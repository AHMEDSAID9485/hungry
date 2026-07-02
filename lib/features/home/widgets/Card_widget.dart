
// import 'package:flutter/material.dart';
// import 'package:hungry/core/constants/app_color.dart';
// import 'package:hungry/shared/CustomText.dart';

// class Card_widget extends StatelessWidget {
//   const Card_widget({
//     super.key, required this.image, required this.name_item, required this.type, required this.rate,
//   });
// final String image;
// final String name_item;
// final String type;
// final String rate;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: AppColor.whiteColor,
//       shadowColor: AppColor.graycolor2,
//       elevation: 3,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 5,
//           vertical: 5,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Image.asset(
//                 image,
//                 height: 115,
//                 width: 120,
//               ),
//             ),
//             CustomText(
//               text: name_item,
//               color: AppColor.blackColor,
//               fontFamily: 'Roboto',
//               fontSize: 16,
//               fontWeight: FontWeight.w900,
//             ),
//             CustomText(
//               text: type,
//               color: AppColor.graycolor2,
//               fontFamily: 'Roboto',
//               fontSize: 16,
//             ),
//             CustomText(
//               text: '⭐ $rate',
//               color: AppColor.blackColor,
//               fontSize: 16,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:hungry/core/constants/app_color.dart';
import 'package:hungry/shared/CustomText.dart';

class CardWidget extends StatefulWidget {
   CardWidget({
    super.key, 
    required this.image, 
    required this.nameItem, 
    required this.type, 
    required this.rate,
  });

  final String image;
  final String nameItem;
  final String type;
  final String rate;


  @override
  State<CardWidget> createState() => _CardWidgetState();
}
bool isFavorite = false;
class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    // شيلنا الـ SizedBox عشان الـ GridView هو اللي يحدد العرض براحته
    return Card(
      color: AppColor.whiteColor,
      shadowColor: AppColor.graycolor2,
      elevation: 3,
      // ضفنا حواف ناعمة للكارت نفسه كشكل جمالي
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 💡 السحر هنا: الـ Expanded هيخلي الصورة تاخد المساحة المتاحة بس وتكبر/تصغر معاك
            Expanded(
              child: Center(
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.contain, // عشان الصورة متتمطش وتحافظ على أبعادها
                ),
              ),
            ),
           Gap(8),
            
            // Texts
            CustomText(
              text: widget.nameItem,
              color: AppColor.blackColor,
              fontFamily: 'Roboto',
              fontSize: 14, // قللنا الحجم درجة عشان لو 3 أعمدة النص ميضربش
              fontWeight: FontWeight.w900,
            ),
           Gap(4),
            CustomText(
              text: widget.type,
              color: AppColor.graycolor2,
              fontFamily: 'Roboto',
              fontSize: 12,
            ),
            Gap(4),
            Row(
              children: [
                CustomText(
                  text: '⭐ ${widget.rate}',
                  color: AppColor.blackColor,
                  fontSize: 12,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,color: isFavorite ? AppColor.redColor : AppColor.graycolor2,))
              ],
            ),
          ],
        ),
      ),
    );
  }
}