import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';
import '../home_page/home_page.dart';

class ConfirmContinueButton extends StatelessWidget {
  const ConfirmContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width,
        height: 75,
        color: kBackButtonColor,
        child: const Text(
          "Continue Shopping",
          style: TextStyle(
            color: kAllBackColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
