import 'package:flutter/material.dart';
import 'package:laza/pages/home/payment_page/add_card.dart';
import 'package:laza/pages/home/payment_page/button.dart';
import 'package:laza/pages/home/payment_page/card_data.dart';
import 'package:laza/pages/home/payment_page/card_number.dart';
import 'package:laza/pages/home/payment_page/card_owner.dart';
import 'package:laza/pages/home/payment_page/payment_card.dart';
import 'package:laza/pages/home/payment_page/payment_text.dart';
import 'package:laza/pages/home/payment_page/save_card.dart';

// ignore: must_be_immutable
class PaymentPage extends StatefulWidget {
  String? cardOwner;
  String? cardNum;
  String? exp;
  String? cvv;
  PaymentPage({this.cardOwner, this.cardNum, this.exp, this.cvv, Key? key})
      : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PaymentText(),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      widget.cardOwner = "Page O'zgardi";
                    });
                  },
                  children: [
                    PaymentCard("Mrh Raju", "1234 5678 9012 1234"),
                    PaymentCard("Shohruh", "8600 1402 1231 1324"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const PaymentAddCard(),
              const SizedBox(height: 10),
              PaymentCardOwner(widget.cardOwner ?? "Mrh Raju"),
              const SizedBox(height: 10),
              PaymentCardNumber(widget.cardNum ?? "5254 7634 8734 7690"),
              const SizedBox(height: 10),
              PaymentCardData(widget.exp ?? "24/24", widget.cvv ?? "7763"),
              const SizedBox(height: 10),
              const PaymentSaveCard(),
              const SizedBox(height: 15.5),
              const PaymentSaveCardButton(),
            ],
          ),
        ),
      ),
    );
  }
}
