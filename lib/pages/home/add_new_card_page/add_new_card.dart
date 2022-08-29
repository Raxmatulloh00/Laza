import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/payment_page/payment_page.dart';

// ignore: must_be_immutable
class AddNewCard extends StatelessWidget {
  TextEditingController textEditingController;
  TextEditingController cardNumbersController;
  TextEditingController cardExpController;
  TextEditingController cardCvvController;
  AddNewCard(this.textEditingController, this.cardNumbersController,
      this.cardExpController, this.cardCvvController,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentPage(
              cardOwner: textEditingController.text,
              cardNum: cardNumbersController.text,
              exp: cardExpController.text,
              cvv: cardCvvController.text,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width,
        height: 75,
        color: kBackButtonColor,
        child: const Text(
          "Add Card",
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
