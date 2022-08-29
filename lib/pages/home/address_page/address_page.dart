import 'package:flutter/material.dart';
import 'package:laza/pages/home/address_page/address_button.dart';
import 'package:laza/pages/home/address_page/address_input.dart';
import 'package:laza/pages/home/address_page/address_text.dart';
import 'package:laza/pages/home/address_page/city_input.dart';
import 'package:laza/pages/home/address_page/name_input.dart';
import 'package:laza/pages/home/address_page/phone_input.dart';
import 'package:laza/pages/home/address_page/switched.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AddressText2(),
            SizedBox(height: 15),
            IsmInput(),
            SizedBox(height: 15),
            CityInput(),
            SizedBox(height: 15),
            PhoneNumber(),
            SizedBox(height: 15),
            AddressInput(),
            SizedBox(height: 15),
            AddressSwitched(),
            SizedBox(height: 139),
            AddressButton(),
          ],
        ),
      ),
    );
  }
}
