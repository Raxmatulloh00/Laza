import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';

class Micro extends StatelessWidget {
  const Micro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // FocusNode focusNode = FocusNode();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 260,
          height: 50,
          child: TextField(
            // focusNode: focusNode,
            // maxLength: 25,
            // keyboardType: TextInputType.name,
            // maxLengthEnforcement: MaxLengthEnforcement.enforced,
            // onChanged:(v){setState(() {})},
            decoration: InputDecoration(
              prefixIcon: SvgPicture.asset(
                "assets/icons/Search.svg",
                fit: BoxFit.cover,
                color: kSubtitle,
              ),
              hintText: "Search...",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          child: SvgPicture.asset(
            "assets/icons/microphone.svg",
          ),
          decoration: BoxDecoration(
            color: kBackButtonColor,
            borderRadius: BorderRadius.circular(10),
          ),
        )
      ],
    );
  }
}
