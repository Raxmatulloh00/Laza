import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/component/data.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/constants/static_datas.dart';
import 'package:laza/pages/wishlist/component/wishlist_component.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    List<int> listTrues = [];

    // ignore: avoid_print
    print(StaticDatas.isLiked);
    for (var e in StaticDatas.isLiked) {
      if (e == true) {
        listTrues.isNotEmpty
            ? listTrues.add(StaticDatas.isLiked
                .indexWhere(((element) => element), listTrues.last + 1))
            : listTrues.add(StaticDatas.isLiked.indexOf(e));
      }
    }
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WishlistComponent(listTrues.length),
            const SizedBox(height: 20),
            _likeCard(context, listTrues),
          ],
        ),
      ),
    );
  }

  SizedBox _likeCard(BuildContext context, List<int> listTrues) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => Visibility(
          visible: StaticDatas.isLiked[listTrues.elementAt(index)] == true,
          child: Column(
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
                        StaticDatas.isLiked[listTrues.elementAt(index)] = false;
                      },
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/heart_image.svg",
                    height: 25,
                    width: 25,
                    fit: BoxFit.scaleDown,
                    color: StaticDatas.isLiked[listTrues.elementAt(index)]
                        ? kGoogleColor
                        : kSubtitleColor,
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        BrandDressImage().images[listTrues.elementAt(index)]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                BrandDressImage().texts[listTrues.elementAt(index)],
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
        itemCount: listTrues.length,
      ),
    );
  }
}
