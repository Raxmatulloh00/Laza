import 'package:flutter/material.dart';
import 'package:laza/constants/const.dart';

class SliderRating extends StatefulWidget {
  const SliderRating({Key? key}) : super(key: key);

  @override
  State<SliderRating> createState() => _SliderRatingState();
}

class _SliderRatingState extends State<SliderRating> {
  double _currentSliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          const Text(
            "0.0",
            style: TextStyle(
              color: kTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 286,
            child: Slider(
              activeColor: kBackButtonColor,
              value: _currentSliderValue,
              max: 5,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(
                  () {
                    _currentSliderValue = value;
                  },
                );
              },
            ),
          ),
          const Text(
            "5.0",
            style: TextStyle(
              color: kTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
