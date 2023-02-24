import 'package:flutter/material.dart';

class CastItem extends StatelessWidget {
  const CastItem({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      width: 164.0,
      child: Stack(
        children: [
          Positioned(
            top: 4,
            left: 49,
            child: SizedBox(
              height: 50.0,
              width: 115.0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    const Color(0xffc4c4c4).withOpacity(0.3),
                    BlendMode.srcOut,
                  ), // This one will create the magic
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          backgroundBlendMode: BlendMode.dstOut,
                        ), // This one will handle background + difference out
                      ),
                      Positioned(
                        top: -8,
                        left: -53.0,
                        child: Container(
                          height: 68,
                          width: 68,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.0,
                  color: const Color(0xffffffff).withOpacity(0.3),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: SizedBox(
                  height: 60.0,
                  width: 60.0,
                  child: Image.asset(
                    image,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 11,
            left: 76,
            child: SizedBox(
              width: 65.0,
              child: Text(
                name,
                style: const TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                  letterSpacing: 0.38,
                  height: 1.36,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
