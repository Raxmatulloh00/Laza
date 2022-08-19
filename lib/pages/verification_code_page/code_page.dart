import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';
import '../new_password_page/new_password_page.dart';
import 'code_text_filed.dart';

class Code extends StatelessWidget {
  const Code({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAllBackColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: CircleAvatar(
              backgroundColor: kLightWhiteColor,
              child: SvgPicture.asset("assets/icons/Arrow_Left.svg"),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                "Verification Code",
                style: TextStyle(
                  fontSize: 28,
                  color: kText,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.75,
                ),
              ),
              Image.asset("assets/images/lock.png"),
              const SizedBox(height: 40),
              const Filed3(),
              const SizedBox(height: 148.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "00:20",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kText,
                    ),
                  ),
                  Text(
                    "resend confirmation code.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kSubtitle,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewPassword(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  color: kBackButtonColor,
                  child: const Text(
                    "Confirm Mail",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
