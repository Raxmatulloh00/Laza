import 'package:flutter/material.dart';

import '../../component/data.dart';

class ImagesCard extends StatelessWidget {
  const ImagesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i <= 3; i++)
            Container(
              margin: const EdgeInsets.all(10),
              width: 77,
              height: 77,
              child: Image.asset(
                SizeImage().images[i],
                fit: BoxFit.cover,
              ),
            )
        ],
      ),
    );
  }
}
