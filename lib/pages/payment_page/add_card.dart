import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/add_new_card_page/add_new_card_page.dart';

class PaymentAddCard extends StatelessWidget {
  const PaymentAddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewCardPage(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/add_plus.svg"),
            const SizedBox(width: 5),
            const Text(
              "Add new card",
              style: TextStyle(
                color: kBackButtonColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        style: OutlinedButton.styleFrom(
          fixedSize: const Size(335, 50),
          backgroundColor: kAddCardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: const BorderSide(width: 3, color: kBackButtonColor),
        ),
      ),
    );
  }
}
