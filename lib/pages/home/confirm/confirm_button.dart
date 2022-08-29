import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: OutlinedButton(
        onPressed: () {},
        child: const Text(
          "Go to Orders",
          style: TextStyle(
            color: kSubtitleColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: OutlinedButton.styleFrom(
          fixedSize: const Size(335, 50),
          backgroundColor: kButtonCollor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
