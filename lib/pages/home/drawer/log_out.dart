import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/gender_page/gender_page.dart';

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Gender(),
          ),
        );
      },
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/Logout.svg"),
          const SizedBox(width: 10),
          const Text(
            "Logout",
            style: TextStyle(
              color: kRedColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
