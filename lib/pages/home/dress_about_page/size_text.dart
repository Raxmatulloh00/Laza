import 'package:flutter/cupertino.dart';
import 'package:laza/constants/const.dart';

class SizeText extends StatelessWidget {
  const SizeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Size",
          style: TextStyle(
            color: kTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Size Guide",
          style: TextStyle(
            color: kSubtitleColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
