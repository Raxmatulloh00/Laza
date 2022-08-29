import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/component/data.dart';
import 'package:laza/constants/const.dart';
import 'package:laza/pages/home/brands_page/brand_page.dart';

class Brand extends StatelessWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i <= 2; i++)
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BrandsPage(
                        BrandImage().images[i],
                      ),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(130, 50),
                  backgroundColor: kLightWhiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
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
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
