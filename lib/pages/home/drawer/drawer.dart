import 'package:flutter/material.dart';
import 'verified_profile.dart';
import 'dark_switch.dart';
import 'colums.dart';
import 'log_out.dart';

class DrawerElements extends StatelessWidget {
  const DrawerElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 10),
        VerifiedProfile(),
        SizedBox(height: 10),
        DarkSwitched(),
        SizedBox(height: 10),
        ColumnsFor(),
        SizedBox(height: 170),
        LogOut(),
      ],
    );
  }
}
