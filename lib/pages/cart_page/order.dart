import 'package:flutter/material.dart';

import '../../constants/const.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Order Info",
            style: TextStyle(
              color: kText,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Subtotal",
                style: TextStyle(
                  color: kSubtitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "\$110",
                style: TextStyle(
                  color: kText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Shipping cost",
                style: TextStyle(
                  color: kSubtitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "\$10",
                style: TextStyle(
                  color: kText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Total",
                style: TextStyle(
                  color: kSubtitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "\$120",
                style: TextStyle(
                  color: kText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
