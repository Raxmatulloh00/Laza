import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: textEditingController1,
                decoration: const InputDecoration(
                  label: Text("Password"),
                  hintText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (value) {
                  if (textEditingController1.text.isEmpty) {
                    return "Empty Field";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: textEditingController2,
                decoration: const InputDecoration(
                  label: Text("Confirm Password"),
                  hintText: "Confirm Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (value) {
                  if (textEditingController2.text.isEmpty) {
                    return "Empty Field";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 126),
            ],
          ),
        ),
      ),
    );
  }
}
