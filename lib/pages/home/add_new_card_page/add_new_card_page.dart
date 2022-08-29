import 'package:flutter/material.dart';
import 'new_card_text.dart';
import 'card_type.dart';
import 'add_card_owner.dart';
import 'add_card_number.dart';
import 'add_card_data.dart';
import 'add_new_card.dart';

class AddNewCardPage extends StatelessWidget {
  const AddNewCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController cardOwnerController = TextEditingController();
    TextEditingController cardNumberController = TextEditingController();
    TextEditingController cardExpController = TextEditingController();
    TextEditingController cardCvvController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NewCardText(),
              const SizedBox(height: 25),
              const CardType(),
              const SizedBox(height: 30),
              AddCardOwner(cardOwnerController),
              const SizedBox(height: 15),
              AddCardNumber(cardNumberController),
              const SizedBox(height: 15),
              AddCardData(cardExpController, cardCvvController),
              const SizedBox(height: 231),
              AddNewCard(
                cardOwnerController,
                cardNumberController,
                cardExpController,
                cardCvvController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
