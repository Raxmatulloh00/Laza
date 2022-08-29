import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza/constants/const.dart';

class VerifiedProfile extends StatelessWidget {
  const VerifiedProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/mrh_raju.png"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mrh Raju",
              style: TextStyle(
                color: kTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                const Text(
                  "Verified Profile",
                  style: TextStyle(
                    color: kSubtitleColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SvgPicture.asset("assets/icons/Badge.svg")
              ],
            ),
          ],
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text(
            "3 Orders",
            style: TextStyle(
              color: kSubtitleColor,
              fontSize: 9.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          style: OutlinedButton.styleFrom(
            fixedSize: const Size(70, 32),
            backgroundColor: kButtonCollor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}
