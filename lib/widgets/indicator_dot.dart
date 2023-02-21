import 'package:flutter/material.dart';
import 'package:neon_colors/constants.dart';

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 6,
      decoration: BoxDecoration(
        color: isActive ? kColorDot : const Color(0xffffffff).withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
    );
  }
}
