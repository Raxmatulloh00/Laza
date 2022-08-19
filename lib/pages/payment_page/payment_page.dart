import 'package:flutter/material.dart';

import 'package:laza/pages/payment_page/add_card.dart';
import 'package:laza/pages/payment_page/button.dart';
import 'package:laza/pages/payment_page/card_data.dart';
import 'package:laza/pages/payment_page/card_number.dart';
import 'package:laza/pages/payment_page/card_owner.dart';
import 'package:laza/pages/payment_page/payment_card.dart';
import 'package:laza/pages/payment_page/payment_text.dart';
import 'package:laza/pages/payment_page/save_card.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              PaymentText(),
              SizedBox(height: 10),
              PaymentCard(),
              SizedBox(height: 10),
              PaymentAddCard(),
              SizedBox(height: 10),
              PaymentCardOwner(),
              SizedBox(height: 10),
              PaymentCardNumber(),
              SizedBox(height: 10),
              PaymentCardData(),
              SizedBox(height: 10),
              PaymentSaveCard(),
              SizedBox(height: 15.5),
              PaymentSaveCardButton(),
            ],
          ),
        ),
      ),
    );
  }
}
