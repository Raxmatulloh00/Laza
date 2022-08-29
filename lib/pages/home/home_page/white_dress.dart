import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

class WhiteDress extends StatelessWidget {
  const WhiteDress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topRight,
          width: 155,
          height: 203,
          child: SvgPicture.asset(
            "assets/icons/heart_image.svg",
            height: 25,
            width: 25,
            fit: BoxFit.scaleDown,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/whit-dress.png"),
              fit: BoxFit.fill,
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
