import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

// ignore: must_be_immutable
class PaymentCardData extends StatelessWidget {
  String? exp;
  String? cvv;
  PaymentCardData(this.exp, this.cvv, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "EXP",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 150,
                height: 50,
                color: kLightWhiteColor,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: exp ?? "24/24",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "CVV",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 155,
                height: 50,
                color: kLightWhiteColor,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: cvv ?? "7763",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
