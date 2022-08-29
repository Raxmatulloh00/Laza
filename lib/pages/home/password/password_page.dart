import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

import '../verification_code_page/code_page.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
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
                  color: kTextColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.75,
                ),
              ),
              Image.asset("assets/images/lock.png"),
              const Spacer(),
              Form(
                key: _key,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s'),
                              replacementString: ""),
                        ],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: kAllBackColor,
                          label: Text("Email Address"),
                          hintText: "Email Address",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle:
                              TextStyle(color: kSubtitleColor, fontSize: 16),
                          border: UnderlineInputBorder(),
                        ),
                        validator: (value) => validateEmail(value),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 91.5),
              const Text(
                "Please write your email to receive a\nconfirmation code to set a new password.",
                style: TextStyle(
                  color: kSubtitleColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  if (_key.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Code(),
                      ),
                    );
                  }
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

String? validateEmail(String? value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty || !regex.hasMatch(value)) {
    return 'Enter a valid email address';
  } else {
    return null;
  }
}
