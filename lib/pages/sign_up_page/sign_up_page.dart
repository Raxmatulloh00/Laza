import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';
import '../sign_up_page/sign_up_text_filed.dart';
import '../welcome/welcome_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kAllBackColor,
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
                "Sign Up",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: kText,
                ),
              ),
              const Filed(),
              Padding(
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
                    "Remember me",
                    style: TextStyle(
                      color: kText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 238),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Welcome(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  color: kBackButtonColor,
                  child: const Text(
                    "Sign Up",
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
