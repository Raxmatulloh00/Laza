import 'package:flutter/material.dart';

import '../../constants/const.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Men's Printed Pullover Hoodie",
              style: TextStyle(
                color: kSubtitle,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Price",
              style: TextStyle(
                color: kSubtitle,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Nike Club Fleece",
              style: TextStyle(
                  color: kText, fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Text(
              "\$120",
              style: TextStyle(
                color: kText,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );
  }
}
