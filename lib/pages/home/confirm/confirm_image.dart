import 'package:flutter/cupertino.dart';
import 'package:laza/constants/const.dart';

class ConfirmImage extends StatelessWidget {
  const ConfirmImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/phone.png"),
            const SizedBox(height: 40),
            const Text(
              "Order Confirmed!",
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Your order has been confirmed, we will send you confirmation email shortly.",
              style: TextStyle(
                color: kSubtitleColor,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
