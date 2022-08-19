import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/const.dart';
import '../password/password_page.dart';
import 'welcome_text_filed.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool isSwitched = false;
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  color: kText,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.75,
                ),
              ),
              const Text(
                "Please enter your data to continue",
                style: TextStyle(
                  color: kSubtitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Filed2(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Password(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: kGoogleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 210),
              const Text(
                "By connecting your account confirm that you agree\nwith our Term and Condition",
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
                      builder: (context) => const Password(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  color: kBackButtonColor,
                  child: const Text(
                    "Login",
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
