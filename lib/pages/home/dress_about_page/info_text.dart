import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';


class InfoText extends StatelessWidget {
  const InfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Description",
          style: TextStyle(
            color: kTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "The Nike Throwback Pullover Hoodie is made\nfrom premium French terry fabric that blends a\nperformance feel with Read More..",
          style: TextStyle(
            color: kSubtitleColor,
            fontSize: 15.4,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
