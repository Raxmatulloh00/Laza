import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';
import '../add_review_page/add_review_page.dart';

class AddReview extends StatelessWidget {
  const AddReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "245 Reviews",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                const Text(
                  "4.8",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 2),
                SvgPicture.asset("assets/icons/full-stars.svg"),
                const SizedBox(width: 2),
                SvgPicture.asset("assets/icons/full-stars.svg"),
                const SizedBox(width: 2),
                SvgPicture.asset("assets/icons/full-stars.svg"),
                const SizedBox(width: 2),
                SvgPicture.asset("assets/icons/full-stars.svg"),
                const SizedBox(width: 2),
                SvgPicture.asset("assets/icons/Star.svg"),
              ],
            ),
          ],
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddReviewPage(),
              ),
            );
          },
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/Edit Square.svg",
                color: kAllBackColor,
              ),
              const SizedBox(width: 5),
              const Text(
                "Add Review",
                style: TextStyle(
                  color: kAllBackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              )
            ],
          ),
          style: OutlinedButton.styleFrom(
            fixedSize: const Size(125, 35),
            backgroundColor: kButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
