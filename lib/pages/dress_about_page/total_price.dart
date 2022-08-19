import 'package:flutter/cupertino.dart';

import '../../constants/const.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Total Price",
              style: TextStyle(
                color: kText,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "with VAT,SD",
              style: TextStyle(
                color: kSubtitle,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Text(
          "\$125",
          style: TextStyle(
            color: kText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
