import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

// ignore: must_be_immutable
class BrandText extends StatelessWidget {
  BrandText(this.image, {Key? key}) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Container(
          padding: const EdgeInsets.all(5),
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            color: kLightWhiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(image),
        ),
        CircleAvatar(
          backgroundColor: kLightWhiteColor,
          child: SvgPicture.asset("assets/icons/Bag.svg"),
        ),
      ],
    );
  }
}
