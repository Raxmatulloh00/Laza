import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/data.dart';
import '../../constants/const.dart';
import '../dress_about_page/lorem.dart';
import '../dress_about_page/stars.dart';

class Reviewers extends StatelessWidget {
  const Reviewers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i <= 3; i++)
          Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(CircleImage().images[i]),
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
                  // const SizedBox(width: 99),
                  RatingField(2.5),
                ],
              ),
              const Lorem()
            ],
          )
      ],
    );
  }
}
