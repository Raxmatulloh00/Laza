import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/new_password_page/new_password_page.dart';

import 'components/code_card.dart';

class Filed3 extends StatefulWidget {
  const Filed3({Key? key}) : super(key: key);

  @override
  State<Filed3> createState() => _Filed3State();
}

class _Filed3State extends State<Filed3> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  TextEditingController textEditingController4 = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: 400,
            height: 98,
            margin: const EdgeInsets.all(5),
            child: Form(
              key: _key,
              child: Row(
                children: [
                  CodeCard(textEditingController1),
                  CodeCard(textEditingController2),
                  CodeCard(textEditingController3),
                  CodeCard(textEditingController4, isItFour: true),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 148.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "00:20",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: kTextColor,
              ),
            ),
            Text(
              "resend confirmation code.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: kSubtitleColor,
              ),
            )
          ],
        ),
        const SizedBox(height: 25),
        GestureDetector(
          onTap: () {
            if (_key.currentState!.validate()) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewPassword(),
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
    );
  }
}
