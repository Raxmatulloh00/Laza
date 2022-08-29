import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

// ignore: must_be_immutable
class AddCardNumber extends StatelessWidget {
  TextEditingController cardNumbersController;
  AddCardNumber(this.cardNumbersController, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Card Number",
            style: TextStyle(
              color: kTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: 335,
            height: 70,
            color: kLightWhiteColor,
            child: TextField(
              maxLength: 19,
              keyboardType: TextInputType.number,
              controller: cardNumbersController,
              decoration: InputDecoration(
                hintText: "5254 7634 8734 7690",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
