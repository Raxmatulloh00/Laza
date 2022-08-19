import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/data.dart';
import '../../constants/const.dart';

class Brand extends StatelessWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i <= 2; i++)
            Container(
              width: 115,
              height: 50,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: kLightWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kAllBackColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(BrandImage().images[i]),
                  ),
                  Text(
                    BrandImage().names[i],
                    style: const TextStyle(
                      color: kText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
