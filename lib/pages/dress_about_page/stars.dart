import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class RatingField extends StatefulWidget {
  double initial;

  RatingField(this.initial, {Key? key}) : super(key: key);

  @override
  State<RatingField> createState() => _RatingFieldState();
}

class _RatingFieldState extends State<RatingField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.initial.toString() + "  rat"),
        RatingBar.builder(
            initialRating: widget.initial,
            allowHalfRating: true,
            itemSize: 30.0,
            itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
            onRatingUpdate: (index) {
              setState(() {});
            })
      ],
    );
  }
}
