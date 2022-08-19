import 'package:flutter/material.dart';

import '../../constants/const.dart';

class WhiteDress extends StatelessWidget {
  const WhiteDress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 155,
          height: 203,
          child: Column(
            children: [
              Image.asset("assets/images/whit-dress.png"),
            ],
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
