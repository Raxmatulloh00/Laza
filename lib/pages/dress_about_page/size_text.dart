import 'package:flutter/cupertino.dart';

import '../../constants/const.dart';

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
            color: kText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Size Guide",
          style: TextStyle(
            color: kSubtitle,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
