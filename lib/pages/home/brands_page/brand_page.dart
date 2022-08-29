import 'package:flutter/material.dart';
import 'package:laza/pages/home/brands_page/dress_card.dart';
import 'brand_text.dart';
import 'texts_button.dart';

// ignore: must_be_immutable
class BrandsPage extends StatelessWidget {
  BrandsPage(this.image, {Key? key}) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: BrandText(image),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(height: 25),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextsButton(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(height: 25),
            ),
            const DressCard()
          ],
        ),
      ),
    );
  }
}
