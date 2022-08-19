import 'package:flutter/material.dart';
import '../../constants/const.dart';
import '../login_page/login_page.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool isSwitched = false;
  String male = "Male";
  String female = "Female";
  String other = "Others";

  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackButtonColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 450, left: 20, right: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/man_woman.png"),
            ),
          ),
          child: SizedBox(
            width: 500,
            height: 222,
            child: Material(
              color: kTextIconColor,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    const Text(
                      "Look Good, Feel Good",
                      style: TextStyle(
                          color: kText,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Create your individual & unique style and\nlook amazing everyday.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: kSubtitle, fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "Men",
                            style: TextStyle(color: kSubtitle, fontSize: 17),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(145, 60),
                            backgroundColor: kLightWhiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "Women",
                            style:
                                TextStyle(color: kTextIconColor, fontSize: 17),
                          ),
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(145, 60),
                            backgroundColor: kBackButtonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(color: kSubtitle, fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

              // Switch(
              //     value: isSwitched,
              //     onChanged: (v) {
              //       setState(() {
              //         isSwitched = v;
              //       });
              //     })
              // SwitchListTile(
              //   value: isSwitched,
              //   onChanged: (value) {
              //     setState(() {
              //       isSwitched = value;
              //     });
              //   },
              //   title: Text("man osha"),
              //   secondary: Icon(Icons.group_remove),
              //   controlAffinity: ListTileControlAffinity.leading,
              // ),
              // RadioListTile(
              //     title: Text(male),
              //     value: male,
              //     groupValue: gender,
              //     onChanged: (v) {
              //       setState(() {
              //         gender = male;
              //       });
              //     }),
              // RadioListTile(
              //     title: Text(female),
              //     value: female,
              //     groupValue: gender,
              //     onChanged: (v) {
              //       setState(() {
              //         gender = female;
              //       });
              //     }),
              // RadioListTile(
              //     title: Text(other),
              //     value: other,
              //     groupValue: gender,
              //     onChanged: (v) {
              //       setState(() {
              //         gender = other;
              //       });
              //     }),