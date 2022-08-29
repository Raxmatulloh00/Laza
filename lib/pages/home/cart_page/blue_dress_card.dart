import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

class BlueDressCard extends StatelessWidget {
  const BlueDressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kAllBackColor,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 335,
            height: 130,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kLightWhiteColor,
                    ),
                    width: 100,
                    height: 110,
                    child: Image.asset("assets/images/lightblue-dress.png"),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Men's Tie-Dye T-Shirt\nNike Sportswear",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "\$45 (-\$4.00 Tax)",
                        style: TextStyle(
                          color: kSubtitleColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: kLightWhiteColor,
                            child: SvgPicture.asset(
                              "assets/icons/bottom-arrow.svg",
                              width: 15,
                              height: 15,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "1",
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 5),
                          CircleAvatar(
                            backgroundColor: kLightWhiteColor,
                            child: SvgPicture.asset(
                              "assets/icons/top-arrow.svg",
                              width: 15,
                              height: 15,
                            ),
                          ),
                          const SizedBox(width: 53),
                          CircleAvatar(
                            backgroundColor: kLightWhiteColor,
                            child: SvgPicture.asset(
                              "assets/icons/Delete.svg",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
