import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/password/password_page.dart';

class Filed2 extends StatefulWidget {
  const Filed2({Key? key}) : super(key: key);

  @override
  State<Filed2> createState() => _Filed2State();
}

class _Filed2State extends State<Filed2> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: userNameController,
                keyboardType: TextInputType.name,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'\s'),
                      replacementString: ""),
                ],
                decoration: const InputDecoration(
                  label: Text("Username"),
                  hintText: "Username",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (value) {
                  if (userNameController.text.length < 4) {
                    return "Enter 4 or more characters";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'\s'),
                      replacementString: ""),
                ],
                decoration: const InputDecoration(
                  label: Text("Password"),
                  hintText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (value) {
                  if (passwordController.text.length < 8) {
                    return "Enter 8 or more characters";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                if (_key.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Password(),
                    ),
                  );
                }
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
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(0),
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
                    color: kTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 226),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "By connecting your account confirm that you agree\nwith our Term and Condition",
                style: TextStyle(
                  color: kSubtitleColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                if (_key.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Password(),
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
    );
  }
}
