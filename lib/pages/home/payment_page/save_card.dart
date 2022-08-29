import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

class PaymentSaveCard extends StatefulWidget {
  const PaymentSaveCard({Key? key}) : super(key: key);

  @override
  State<PaymentSaveCard> createState() => _PaymentSaveCardState();
}

class _PaymentSaveCardState extends State<PaymentSaveCard> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SwitchListTile(
        activeColor: kSwitchColor,
        value: isSwitched,
        onChanged: (value) {
          setState(
            () {
              isSwitched = value;
            },
          );
        },
        title: const Text(
          "Save card info",
          style: TextStyle(
            color: kTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
