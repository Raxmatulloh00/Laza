import 'package:flutter/material.dart';
import 'add_review_text.dart';
import 'info_input.dart';
import 'name_input.dart';
import 'slider.dart';
import 'submit_review.dart';

class AddReviewPage extends StatelessWidget {
  const AddReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AddReviewText(),
            SizedBox(height: 10),
            NameInput(),
            SizedBox(height: 10),
            InfoInput(),
            SizedBox(height: 5),
            SliderRating(),
            SizedBox(height: 104),
            SubmitReviewButton()
          ],
        ),
      ),
    );
  }
}
