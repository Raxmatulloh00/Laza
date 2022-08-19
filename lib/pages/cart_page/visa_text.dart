import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';
import '../payment_page/payment_page.dart';

class VisaText extends StatelessWidget {
  const VisaText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Payment Method",
                style: TextStyle(
                  color: kText,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                splashRadius: 10,
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  "assets/icons/right_arrow.svg",
                  width: 15,
                  height: 15,
                ),
              )
            ],
          ),
          // const SizedBox(height: 15),
          Row(
            children: [
              Container(
                color: kLightWhiteColor,
                width: 50,
                height: 50,
                child: SvgPicture.asset("assets/icons/visa.svg"),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Visa Classic",
                    style: TextStyle(
                      color: kText,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "**** 7690",
                    style: TextStyle(
                      color: kSubtitle,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Spacer(),
              //const SizedBox(width: 138),
              CircleAvatar(
                backgroundColor: kGreenColor,
                child: SvgPicture.asset("assets/icons/true.svg"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
