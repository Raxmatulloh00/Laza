import 'package:flutter/material.dart';

import 'package:laza/constants/const.dart';

class PaymentCardOwner extends StatelessWidget {
  const PaymentCardOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Card Owner",
            style: TextStyle(
              color: kText,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: 335,
            height: 50,
            color: kLightWhiteColor,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Mrh Raju",
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
