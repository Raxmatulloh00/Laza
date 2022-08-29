import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/welcome/welcome_page.dart';

class Filed extends StatefulWidget {
  const Filed({Key? key}) : super(key: key);

  @override
  State<Filed> createState() => _FiledState();
}

class _FiledState extends State<Filed> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  // FocusNode focusNode = FocusNode();
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'\s'),
                      replacementString: ""),
                ],
                decoration: const InputDecoration(
                  label: Text("Email Address"),
                  hintText: "Email Address",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (value) => validateEmail(value),
              ),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 142.5),
            GestureDetector(
              onTap: () {
                if (_key.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Welcome(),
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
    );
  }
}

//  Text(

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
  //                 TextFiledInfo().placeholder[i],
  //                 style: const TextStyle(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w400,
  //                   color: kSubtitle,
  //                 ),
  //               ),