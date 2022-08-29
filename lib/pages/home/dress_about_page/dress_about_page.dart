import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';

import '../cart_page/cart_page.dart';
import 'images.dart';
import 'info_text.dart';
import 'lorem.dart';
import 'rating.dart';
import 'reviews.dart';
import 'size_card.dart';
import 'size_text.dart';
import 'texts.dart';
import 'total_price.dart';

class DressAbout extends StatelessWidget {
  const DressAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              toolbarHeight: 350,
              expandedHeight: 350,
              flexibleSpace: Image.asset(
                "assets/images/img.png",
                fit: BoxFit.cover,
              ),
              elevation: 0,
              actions: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: CircleAvatar(
                              backgroundColor: kLightWhiteColor,
                              child: SvgPicture.asset(
                                  "assets/icons/Arrow_Left.svg"),
                            ),
                          ),
                          const SizedBox(width: 260),
                          CircleAvatar(
                            backgroundColor: kLightWhiteColor,
                            child: SvgPicture.asset("assets/icons/Bag.svg"),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ],
                )
              ],
              bottom: PreferredSize(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(167, 181, 181, 177),
                    radius: 45,
                    child: SvgPicture.asset(
                      "assets/icons/nike.svg",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                preferredSize: const Size(50, 30),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Texts(),
                      ),
                      const ImagesCard(),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20),
                        child: SizeText(),
                      ),
                      const SizeCard(),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: InfoText(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Reviews(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Rating(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Lorem(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: TotalPrice(),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartPage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 30),
                          width: MediaQuery.of(context).size.width,
                          height: 75,
                          color: kBackButtonColor,
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
