import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_colors/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, this.controller});

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0,
      width: 343.0,
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xff767680).withOpacity(0.12),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          SvgPicture.asset(kIconSearch),
          const SizedBox(width: 6.0),
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: const Color(0xffffffff),
              showCursor:
                  MediaQuery.of(context).viewInsets.bottom == 0 ? false : true,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                color: const Color(0xffffffff).withOpacity(0.6),
                fontFamily: "SFProText",
                fontWeight: FontWeight.w400,
                fontSize: 17.0,
                letterSpacing: -0.41,
                height: 1.29,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                isCollapsed: true,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: const Color(0xffffffff).withOpacity(0.6),
                  fontFamily: "SFProText",
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0,
                  letterSpacing: -0.41,
                  height: 1.29,
                ),
              ),
            ),
          ),
          const SizedBox(width: 6.0),
          SvgPicture.asset(kIconMicrophone),
        ],
      ),
    );
  }
}
