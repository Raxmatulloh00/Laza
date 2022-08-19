import 'package:flutter/material.dart';

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
    return Padding(
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
    );
  }
}
