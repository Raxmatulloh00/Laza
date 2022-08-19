import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

class AddressSwitched extends StatefulWidget {
  const AddressSwitched({Key? key}) : super(key: key);

  @override
  State<AddressSwitched> createState() => _AddressSwitchedState();
}

class _AddressSwitchedState extends State<AddressSwitched> {
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
          "Save as primary address",
          style: TextStyle(
            color: kText,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
