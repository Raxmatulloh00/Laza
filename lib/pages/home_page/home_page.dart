import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';
import 'blue_dress.dart';
import 'brand.dart';
import 'green_dress.dart';
import 'input_micro.dart';
import 'white_dress.dart';
import 'yellow_dress.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAllBackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: kLightWhiteColor,
            child: SvgPicture.asset("assets/icons/menu.svg"),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: kLightWhiteColor,
            child: SvgPicture.asset("assets/icons/Bag.svg"),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello",
                    style: TextStyle(
                      color: kText,
                      fontSize: 28,
                      letterSpacing: 0.75,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Welcome to Laza.",
                    style: TextStyle(
                      color: kSubtitle,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Micro(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Choose Brand",
                        style: TextStyle(
                          color: kText,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: kSubtitle,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Brand(),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "New Arraival",
                        style: TextStyle(
                          color: kText,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: kSubtitle,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      GreenDress(),
                      YellowDress(),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      WhiteDress(),
                      BlueDress(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kBackButtonColor,
        unselectedItemColor: kSubtitle,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Heart.svg"),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Bag.svg"),
            label: "Bag",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/wallet.svg"),
            label: "Wallet",
          ),
        ],
        onTap: (value) {
          setState(
            () {
              index = value;
            },
          );
        },
      ),
    );
  }
}
