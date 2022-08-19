import 'package:flutter/material.dart';
import 'address_text.dart';
import 'blue_dress_card.dart';
import 'button.dart';
import 'cart_text.dart';
import 'order.dart';
import 'red_dress_card.dart';
import 'visa_text.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CartText(),
              SizedBox(height: 15),
              BlueDressCard(),
              SizedBox(height: 10),
              RedDressCard(),
              SizedBox(height: 10),
              AddressText(),
              SizedBox(height: 10),
              VisaText(),
              SizedBox(height: 5),
              Order(),
              SizedBox(height: 24.5),
              Button()
            ],
          ),
        ),
      ),
    );
  }
}
