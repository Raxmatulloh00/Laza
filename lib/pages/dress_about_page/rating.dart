import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/circle-white.png"),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ronald Richards",
              style: TextStyle(
                color: kText,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset("assets/icons/clock.svg"),
                const SizedBox(width: 5),
                const Text(
                  "13 Sep, 2020",
                  style: TextStyle(
                    color: kSubtitle,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(width: 99),
        // Column(children: [RatingBali(), Stars()])
      ],
    );
  }
}
