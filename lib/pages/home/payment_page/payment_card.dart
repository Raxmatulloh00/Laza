import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

// ignore: must_be_immutable
class PaymentCard extends StatelessWidget {
  String cardOwner;
  String cardNumber;

  PaymentCard(this.cardOwner, this.cardNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 185,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/card-image.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cardOwner,
                    style: const TextStyle(
                      color: kAllBackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SvgPicture.asset("assets/icons/visa_white.svg")
                ],
              ),
              const SizedBox(height: 45),
              const Text(
                "Visa Classic",
                style: TextStyle(
                  color: kAllBackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "${cardNumber.substring(0, 5)} **** **** ${cardNumber.substring(15)}",
                style: const TextStyle(
                  color: kAllBackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 4,
                ),
              ),
              const SizedBox(height: 9),
              const Text(
                "\$30,763.87",
                style: TextStyle(
                  color: kAllBackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
