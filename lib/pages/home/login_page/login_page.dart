import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/welcome/welcome_page.dart';

import '../sign_up_page/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                "Let’s Get Started",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.75,
                ),
              ),
              const SizedBox(height: 185),
              _outlinedButton(
                kFacebookColor,
                "Facebook",
                "assets/icons/facebook.svg",
                () {},
              ),
              const SizedBox(height: 10),
              _outlinedButton(
                kTwitterColor,
                "Twitter",
                "assets/icons/twitter.svg",
                () {},
              ),
              const SizedBox(height: 10),
              _outlinedButton(
                kGoogleColor,
                "Google",
                "assets/icons/google.svg",
                () {},
              ),
              const SizedBox(height: 162.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: kSubtitleColor,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Welcome(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  color: kBackButtonColor,
                  child: const Text(
                    "Create an Account",
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

  OutlinedButton _outlinedButton(
      Color color, String string, String svgPicture, Function function) {
    return OutlinedButton(
      onPressed: () => function,
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(335, 50),
        backgroundColor: color,
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgPicture,
            width: 22,
            height: 22,
          ),
          const SizedBox(width: 8),
          Text(
            string,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.44,
            ),
          ),
        ],
      ),
    );
  }
}
