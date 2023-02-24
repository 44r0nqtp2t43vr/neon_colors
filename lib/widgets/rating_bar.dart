import 'package:flutter/material.dart';
import 'package:neon_colors/constants.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({super.key, required this.rating, this.total = 5});

  final int rating;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
        (index) => Padding(
          padding: index == 0
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 6.0),
          child: Icon(
            Icons.star,
            size: 14.0,
            color: index < rating ? kColorStar : const Color(0xffffffff),
          ),
        ),
      ),
    );
  }
}
