import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

class NewCardText extends StatelessWidget {
  const NewCardText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
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
          const SizedBox(width: 80),
          const Text(
            "Add New Card",
            style: TextStyle(
              color: kText,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
