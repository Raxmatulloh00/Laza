import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';
import '../verification_code_page/code_page.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

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
                "Forgot Password",
                style: TextStyle(
                  color: kText,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.75,
                ),
              ),
              Image.asset("assets/images/lock.png"),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kSubtitle,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                          color: kText,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kAllBackColor,
                        hintText: "Email Address",
                        hintStyle: TextStyle(color: kSubtitle, fontSize: 16),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 91.5),
              const Text(
                "Please write your email to receive a\nconfirmation code to set a new password.",
                style: TextStyle(
                  color: kSubtitle,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Code(),
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
