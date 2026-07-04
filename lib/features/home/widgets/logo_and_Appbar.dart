
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/core/constants/app_color.dart';

class Logo_and_appbar extends StatelessWidget {
  const Logo_and_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          SvgPicture.asset(
            'assets/logo/Hungry_.svg',
            color: AppColor.primaryColor,
            height: 30,
            width: 30,
          ),
          Spacer(),
          CircleAvatar(
            radius: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/Home_images/main_profile.png'),
            ),
          )
      ],
    );
  }
}
