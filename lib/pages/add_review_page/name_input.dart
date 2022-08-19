import 'package:flutter/material.dart';
import '../../constants/const.dart';

class NameInput extends StatelessWidget {
  const NameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Name",
            style: TextStyle(
              color: kText,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            width: 335,
            height: 50,
            color: kLightWhiteColor,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type your name",
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
