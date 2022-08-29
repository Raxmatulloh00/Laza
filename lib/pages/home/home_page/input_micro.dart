import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

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
                width: 10,
                height: 10,
                fit: BoxFit.scaleDown,
                color: kSubtitleColor,
              ),
              hintText: "Search...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          child: SvgPicture.asset(
            "assets/icons/microphone.svg",
            fit: BoxFit.scaleDown,
            width: 15,
            height: 15,
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
