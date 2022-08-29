import 'package:flutter/material.dart';
import 'package:laza/component/data.dart';

class CardType extends StatelessWidget {
  const CardType({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i <= 2; i++)
            SizedBox(
              width: 100,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                child: Image.asset(ButtonImage().images[i]),
                style: OutlinedButton.styleFrom(
                  backgroundColor: ButtonImage().colors[i],
                  fixedSize: const Size(100, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: ButtonImage().bordercolors[i],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
