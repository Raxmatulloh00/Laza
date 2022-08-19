import 'package:flutter/cupertino.dart';
import 'package:laza/constants/const.dart';

class RatingBali extends StatelessWidget {
  const RatingBali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "4.8",
          style: TextStyle(
            color: kText,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "rating",
          style: TextStyle(
            color: kSubtitle,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
