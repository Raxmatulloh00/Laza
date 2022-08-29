import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

class ConfirmText extends StatelessWidget {
  const ConfirmText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: CircleAvatar(
          backgroundColor: kLightWhiteColor,
          child: SvgPicture.asset("assets/icons/Arrow_Left.svg"),
        ),
      ),
    );
  }
}
