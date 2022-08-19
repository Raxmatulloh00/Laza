import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

class AddressButton extends StatelessWidget {
  const AddressButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width,
        height: 75,
        color: kBackButtonColor,
        child: const Text(
          "Save Address",
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
