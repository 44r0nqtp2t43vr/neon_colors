import 'package:flutter/material.dart';
import 'package:neon_colors/constants.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 92.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xffffffff).withOpacity(0.025),
          ),
        ),
      ],
    );
  }
}
