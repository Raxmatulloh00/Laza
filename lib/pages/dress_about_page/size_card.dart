import 'package:flutter/cupertino.dart';
import '../../component/data.dart';
import '../../constants/const.dart';

class SizeCard extends StatelessWidget {
  const SizeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i <= 4; i++)
            Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(154, 182, 183, 189),
              ),
              child: Text(
                SizeImage().size[i],
                style: const TextStyle(
                  color: kText,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
