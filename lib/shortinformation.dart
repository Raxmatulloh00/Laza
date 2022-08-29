// TEXTFORMFIELD, FORM, VALIDATOR

import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/home_page/home_page.dart';

class ShortInfo extends StatefulWidget {
  const ShortInfo({Key? key}) : super(key: key);

  @override
  State<ShortInfo> createState() => _ShortInfoState();
}

class _ShortInfoState extends State<ShortInfo> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kAllBackColor,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  controller: textEditingController1,
                  focusNode: focusNode,
                  decoration: const InputDecoration(
                    label: Text("Enter your phone number"),
                    hintText: "+998 99 123 45 67",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (v) {
                    textEditingController1.text.length == 7
                        ? setState(
                            () {
                              focusNode.nextFocus();
                            },
                          )
                        : focusNode.requestFocus();
                  },
                  validator: (value) {
                    if (textEditingController1.text.length > 7) {
                      return "Empty Field";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: textEditingController2,
                  validator: (value) {
                    if (textEditingController2.text.isEmpty) {
                      return "Empty Field";
                    }
                    return null;
                  },
                ),
                TextButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      }
                    },
                    child: const Text("Next")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// DRAWER ENDDRAWER SHOWBOTTOMSHEET HERO

// class DressAbout extends StatelessWidget {
//   const DressAbout({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: CustomScrollView(
//           physics: BouncingScrollPhysics(),
//           slivers: [
//             SliverAppBar(
//               // backgroundColor: Color.fromARGB(255, 145, 26, 26),
//               toolbarHeight: 350,
//               expandedHeight: 350,
//               flexibleSpace: Image.asset(
//                 "assets/images/img.png",
//                 fit: BoxFit.cover,
//               ),
//               elevation: 0,
//               actions: [
//                 Column(
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(top: 20),
//                       alignment: Alignment.topCenter,
//                       child: Row(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.pop(context);
//                             },
//                             child: CircleAvatar(
//                               backgroundColor: kLightWhiteColor,
//                               child: SvgPicture.asset(
//                                   "assets/icons/Arrow_Left.svg"),
//                             ),
//                           ),
//                           const SizedBox(width: 260),
//                           CircleAvatar(
//                             backgroundColor: kLightWhiteColor,
//                             child: SvgPicture.asset("assets/icons/Bag.svg"),
//                           ),
//                           const SizedBox(width: 10),
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//               bottom: PreferredSize(
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 10.0),
//                   child: CircleAvatar(
//                     backgroundColor: const Color.fromARGB(167, 181, 181, 177),
//                     radius: 45,
//                     child: SvgPicture.asset(
//                       "assets/icons/nike.svg",
//                       width: 30,
//                       height: 30,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 preferredSize: Size(50, 30),
//               ),
//             ),
//             SliverList(
//               delegate: SliverChildListDelegate(
//                 [
//                   Hero(
//                     tag: "greenDress",
//                     child: Column(
//                       children: [
//                         const Padding(
//                           padding:
//                               EdgeInsets.only(top: 20, left: 20, right: 20),
//                           child: Texts(),
//                         ),
//                         const ImagesCard(),
//                         const Padding(
//                           padding: EdgeInsets.only(left: 20.0, right: 20),
//                           child: SizeText(),
//                         ),
//                         const SizeCard(),
//                         const Padding(
//                           padding:
//                               EdgeInsets.only(top: 10, left: 20, right: 20),
//                           child: InfoText(),
//                         ),
//                         const Padding(
//                           padding:
//                               EdgeInsets.only(top: 10, left: 20, right: 20),
//                           child: Reviews(),
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(left: 20, right: 20),
//                           child: Rating(),
//                         ),
//                         const Padding(
//                           padding:
//                               EdgeInsets.only(top: 10, left: 20, right: 20),
//                           child: Lorem(),
//                         ),
//                         const Padding(
//                           padding:
//                               EdgeInsets.only(top: 10, left: 20, right: 20),
//                           child: TotalPrice(),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             // Navigator.pushReplacement(
//                             //   context,
//                             //   MaterialPageRoute(
//                             //     builder: (context) => const Code(),
//                             //   ),
//                             // );
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.only(top: 30),
//                             width: MediaQuery.of(context).size.width,
//                             height: 75,
//                             color: kBackButtonColor,
//                             child: const Text(
//                               "Add to Cart",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
