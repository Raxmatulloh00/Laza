import 'package:flutter/material.dart';
import 'confirm_text.dart';
import 'confirm_image.dart';
import 'confirm_button.dart';
import 'continue_button.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ConfirmText(),
            SizedBox(height: 100),
            ConfirmImage(),
            SizedBox(height: 63),
            ConfirmButton(),
            SizedBox(height: 30),
            ConfirmContinueButton()
          ],
        ),
      ),
    );
  }
}
