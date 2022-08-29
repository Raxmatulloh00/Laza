import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

import '../dress_about_page/dress_about_page.dart';

class GreenDress extends StatelessWidget {
  const GreenDress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DressAbout(),
              ),
            );
          },
          child: Container(
            alignment: Alignment.topRight,
            width: 155,
            height: 203,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/heart_image.svg",
                height: 25,
                width: 25,
                fit: BoxFit.scaleDown,
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/gree-dress.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const Text(
          "Nike Sportswear Club\nFleece",
          style: TextStyle(
            color: kTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          "\$99",
          style: TextStyle(
            color: kTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
