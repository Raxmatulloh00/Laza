import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

// ignore: must_be_immutable
class AddCardOwner extends StatelessWidget {
  TextEditingController textEditingController;
  AddCardOwner(this.textEditingController, {Key? key}) : super(key: key);

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
              color: kTextColor,
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
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: "Mrh Raju",
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
