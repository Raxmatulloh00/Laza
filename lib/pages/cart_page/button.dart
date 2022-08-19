import 'package:flutter/material.dart';

import '../../constants/const.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width,
        height: 75,
        color: kBackButtonColor,
        child: const Text(
          "Checkout",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
