import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/wishlist/wishlist_page.dart';
import '../drawer/drawer.dart';
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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        width: 300,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => _scaffoldKey.currentState!.closeDrawer(),
                  child: const CircleAvatar(
                    backgroundColor: kButtonCollor,
                    backgroundImage: AssetImage("assets/images/close.png"),
                  ),
                ),
                const DrawerElements()
              ],
            ),
          ),
        ),
      ),
      backgroundColor: kAllBackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          index == 1 ? "Wishlist" : "",
          style: const TextStyle(
            color: kTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: index == 1
            ? const BackButton(
                color: Colors.black,
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => _scaffoldKey.currentState!.openDrawer(),
                  child: CircleAvatar(
                    backgroundColor: kLightWhiteColor,
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
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
      body: index == 1
          ? const WishlistPage()
          : SafeArea(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello",
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 28,
                            letterSpacing: 0.75,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Welcome to Laza.",
                          style: TextStyle(
                            color: kSubtitleColor,
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
                                color: kTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                color: kSubtitleColor,
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
                                color: kTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                color: kSubtitleColor,
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
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: index,
        showElevation: true,
        onItemSelected: (i) => setState(() {
          index = i;
        }),
        items: [
          FlashyTabBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              height: 20,
            ),
            title: const Text("Home"),
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset("assets/icons/Heart.svg"),
            title: const Text("Wishlist"),
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Bag.svg",
              height: 20,
            ),
            title: const Text("Bag"),
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset("assets/icons/wallet.svg"),
            title: const Text("Wallet"),
          ),
        ],
      ),
    );
  }
}

//           BottomNavigationBarItem(
//             icon: SvgPicture.asset("assets/icons/home.svg"),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset("assets/icons/Heart.svg"),
//             label: "Wishlist",
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset("assets/icons/Bag.svg"),
//             label: "Bag",
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset("assets/icons/wallet.svg"),
//             label: "Wallet",
//           ),
//         ],