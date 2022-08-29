import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/component/data.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/constants/static_datas.dart';

class DressCard extends StatefulWidget {
  const DressCard({Key? key}) : super(key: key);

  @override
  State<DressCard> createState() => _DressCardState();
}

class _DressCardState extends State<DressCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 550,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 8,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.66,
        ),
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              width: 155,
              height: 203,
              child: IconButton(
                onPressed: () {
                  setState(
                    () {
                      StaticDatas.isLiked[index] = !StaticDatas.isLiked[index];
                    },
                  );
                },
                icon: SvgPicture.asset(
                  "assets/icons/heart_image.svg",
                  height: 25,
                  width: 25,
                  fit: BoxFit.scaleDown,
                  color: StaticDatas.isLiked[index]
                      ? kGoogleColor
                      : kSubtitleColor,
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(BrandDressImage().images[index]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              BrandDressImage().texts[index],
              style: const TextStyle(
                color: kTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
            ),
            const Text(
              "\$99",
              style: TextStyle(
                color: kTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
