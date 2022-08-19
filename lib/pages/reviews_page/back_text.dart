import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';

class BackText extends StatelessWidget {
  const BackText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: CircleAvatar(
            backgroundColor: kLightWhiteColor,
            child: SvgPicture.asset("assets/icons/Arrow_Left.svg"),
          ),
        ),
        const SizedBox(width: 90),
        const Text(
          "Reviews",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: kText,
          ),
        )
      ],
    );
  }
}
