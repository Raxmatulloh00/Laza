import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

class InfoInput extends StatelessWidget {
  const InfoInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "How was your experience ?",
            style: TextStyle(
              color: kTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            width: 335,
            color: kLightWhiteColor,
            child: TextField(
              maxLines: 15,
              decoration: InputDecoration(
                hintText: "Describe your experience?",
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
