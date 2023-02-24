import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_colors/constants.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          SizedBox(
            height: 92.0,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                const Color(0xffffffff).withOpacity(0.03),
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
                    top: -14.0,
                    child: Container(
                      height: 72,
                      width: 72,
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
          Positioned(
            top: 0,
            child: SizedBox(
              height: 60.0,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 8.0),
                      padding: const EdgeInsets.only(
                          top: 19.0, left: 28.0, right: 28.0),
                      height: 60.0,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1.0,
                            color: const Color(0xffffffff).withOpacity(0.3),
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SvgPicture.asset(kIconHome),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(kIconMovie),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  OutlineGradientButton(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        kColorNeonPink,
                        kColorNeonCyan,
                      ],
                    ),
                    strokeWidth: 3,
                    padding: EdgeInsets.zero,
                    radius: const Radius.circular(30),
                    child: SizedBox(
                      width: 60.0,
                      height: 60.0,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                kColorNeonPink.withOpacity(0.15),
                                kColorNeonCyan.withOpacity(0.15),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    const Color(0xffffffff).withOpacity(0.15),
                              ),
                              child: Center(
                                child: SvgPicture.asset(kIconPlus),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 8.0),
                      padding: const EdgeInsets.only(
                          top: 19.0, left: 37.0, right: 28.0),
                      height: 60.0,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1.0,
                            color: const Color(0xffffffff).withOpacity(0.3),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SvgPicture.asset(kIconBrowse),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Align(
                                alignment: Alignment.topRight,
                                child: SvgPicture.asset(kIconDownload),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 92.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: -14.0,
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xffffffff).withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            child: Container(
              height: 5.0,
              width: 134.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
