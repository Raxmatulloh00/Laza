import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/component/data.dart';
import 'package:laza/constants/const.dart';

class ColumnsFor extends StatelessWidget {
  const ColumnsFor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i <= 5; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
                SvgPicture.asset(DrawerImageName().svgimages[i]),
                const SizedBox(width: 10),
                Text(
                  DrawerImageName().names[i],
                  style: const TextStyle(
                    fontSize: 16,
                    color: kTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
