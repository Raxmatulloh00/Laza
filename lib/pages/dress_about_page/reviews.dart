import 'package:flutter/material.dart';

import '../../constants/const.dart';
import '../reviews_page/reviews_page.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Looks(),
              ),
            );
          },
          child: const Text(
            "Reviews",
            style: TextStyle(
              color: kText,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Text(
          "View All",
          style: TextStyle(
            color: kSubtitle,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
