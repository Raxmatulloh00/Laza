import 'package:flutter/material.dart';

import '../../constants/const.dart';
import '../dress_about_page/dress_about_page.dart';

class GreenDress extends StatelessWidget {
  const GreenDress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DressAbout(),
              ),
            );
          },
          child: SizedBox(
            width: 155,
            height: 203,
            child: Column(
              children: [
                Image.asset("assets/images/gree-dress.png"),
              ],
            ),
          ),
        ),
        const Text(
          "Nike Sportswear Club\nFleece",
          style: TextStyle(
            color: kText,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          "\$99",
          style: TextStyle(
            color: kText,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
