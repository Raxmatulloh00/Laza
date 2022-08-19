import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/const.dart';
import '../address_page/address_page.dart';

class AddressText extends StatelessWidget {
  const AddressText({Key? key}) : super(key: key);

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
                "Delivery Address",
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
                      builder: (context) => const AddressPage(),
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
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset("assets/images/map.png"),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Chhatak, Sunamgonj 12/8AB",
                    style: TextStyle(
                      color: kText,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Sylhet",
                    style: TextStyle(
                      color: kSubtitle,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(width: 20),
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
