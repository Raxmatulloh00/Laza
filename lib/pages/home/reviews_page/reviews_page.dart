import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

import 'add_review.dart';
import 'back_text.dart';
import 'reviewers.dart';

class Looks extends StatelessWidget {
  const Looks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAllBackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              BackText(),
              SizedBox(height: 25),
              AddReview(),
              Reviewers(),
            ],
          ),
        ),
      ),
    );
  }
}
