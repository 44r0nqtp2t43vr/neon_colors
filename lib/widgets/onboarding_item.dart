import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neon_colors/constants.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: kColorBackground,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 6,
                    top: 83,
                    child: Container(
                      height: 166.0,
                      width: 166.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorNeonPink.withOpacity(0.75),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 40.0,
                          sigmaY: 40.0,
                        ),
                        child: Container(
                          height: 166.0,
                          width: 166.0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -61,
                    top: 241,
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorNeonCyan.withOpacity(0.50),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 60.0,
                          sigmaY: 60.0,
                        ),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 117,
                    child: Row(
                      children: [
                        Container(
                          height: 40.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorNeonPink,
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 40.0,
                              sigmaY: 20.0,
                            ),
                            child: Container(
                              height: 40.0,
                              width: 80.0,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorNeonCyan.withOpacity(0.8),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 40.0,
                              sigmaY: 20.0,
                            ),
                            child: Container(
                              height: 40.0,
                              width: 80.0,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 103,
                    child: OutlineGradientButton(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kColorNeonPink,
                          const Color(0xff9E95C4).withOpacity(0.02),
                          const Color(0xff6AB9CA).withOpacity(0.02),
                          kColorNeonCyan,
                        ],
                        stops: const [0.1, 0.4, 0.55, 1],
                      ),
                      strokeWidth: 4,
                      padding: EdgeInsets.zero,
                      radius: const Radius.circular(169),
                      child: SizedBox(
                        width: 338,
                        height: 338,
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(164.0),
                            child: Container(
                              width: 328,
                              height: 328,
                              padding: const EdgeInsets.only(top: 55.0),
                              child: Image.asset(
                                'assets/images/onboarding.png',
                                alignment: Alignment.bottomLeft,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 259,
                    child: Text(
                      "Watch movies in\nVirtual Reality",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xffffffff).withOpacity(0.85),
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w700,
                        fontSize: 34.0,
                        letterSpacing: -0.3,
                        height: 1.36,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 185,
                    child: Text(
                      "Download and watch offline\nwherever you are",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xffffffff).withOpacity(0.75),
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        letterSpacing: -0.3,
                        height: 1.36,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 117,
                    child: OutlineGradientButton(
                      gradient: LinearGradient(
                        colors: [
                          kColorNeonPink,
                          kColorNeonCyan,
                        ],
                      ),
                      strokeWidth: 3,
                      padding: EdgeInsets.zero,
                      radius: const Radius.circular(169),
                      child: Container(
                        width: 160,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(169),
                          gradient: LinearGradient(
                            colors: [
                              kColorNeonPink.withOpacity(0.15),
                              kColorNeonCyan.withOpacity(0.15),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              letterSpacing: 0.37,
                              height: 1.36,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
