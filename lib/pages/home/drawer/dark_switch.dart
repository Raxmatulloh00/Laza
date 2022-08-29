import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

class DarkSwitched extends StatefulWidget {
  const DarkSwitched({Key? key}) : super(key: key);

  @override
  State<DarkSwitched> createState() => _DarkSwitchedState();
}

class _DarkSwitchedState extends State<DarkSwitched> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      activeColor: kSwitchColor,
      value: isSwitched,
      onChanged: (value) {
        setState(
          () {
            isSwitched = value;
          },
        );
      },
      secondary: SvgPicture.asset("assets/icons/sun.svg"),
      contentPadding: EdgeInsets.zero,
      title: const Text(
        "Dark Mode",
        style: TextStyle(
          color: kTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
