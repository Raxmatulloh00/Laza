import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/home_page/home_page.dart';

class Filed4 extends StatefulWidget {
  const Filed4({Key? key}) : super(key: key);

  @override
  State<Filed4> createState() => _Filed4State();
}

class _Filed4State extends State<Filed4> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _key,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: textEditingController1,
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
                  if (textEditingController1.text.length < 8) {
                    return "Enter 8 or more characters";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: textEditingController2,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'\s'),
                      replacementString: ""),
                ],
                decoration: const InputDecoration(
                  label: Text("Confirm Password"),
                  hintText: "Confirm Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (value) {
                  if (textEditingController2.text.length < 8) {
                    return "Confirm Password";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 225),
            GestureDetector(
              onTap: () {
                if (_key.currentState!.validate() &&
                    textEditingController1.text ==
                        textEditingController2.text) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
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
                  "Reset Password",
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
