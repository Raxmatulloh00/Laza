import 'package:flutter/material.dart';
import 'package:laza/pages/add_new_card_page/new_card_text.dart';

class AddNewCardPage extends StatelessWidget {
  const AddNewCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [NewCardText()],
        ),
      ),
    );
  }
}
