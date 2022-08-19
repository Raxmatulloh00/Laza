import 'package:flutter/material.dart';

import '../../component/data.dart';
import '../../constants/const.dart';

class Filed extends StatelessWidget {
  const Filed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          for (var i = 0; i <= 2; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TextFiledInfo().placeholder[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: kSubtitle,
                  ),
                ),
                const SizedBox(height: 5),
                TextField(
                  textInputAction: TextInputAction.next,
                  style: const TextStyle(
                      color: kText, fontSize: 18, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kAllBackColor,
                    hintText: TextFiledInfo().placeholder[i],
                    hintStyle: const TextStyle(color: kSubtitle, fontSize: 16),
                    border: const UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            )
        ],
      ),
    );
  }
}
