import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

class Lorem extends StatelessWidget {
  const Lorem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Pellentesque malesuada eget\nvitae amet...",
      style: TextStyle(
        color: kSubtitleColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
