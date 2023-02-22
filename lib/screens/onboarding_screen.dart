import 'package:flutter/material.dart';
import 'package:neon_colors/constants.dart';
import 'package:neon_colors/data.dart';
import 'package:neon_colors/widgets/indicator_dot.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: kColorBackground,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView.builder(
                    itemCount: onboardingScreenItems.length,
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemBuilder: (context, index) =>
                        onboardingScreenItems[index],
                  ),
                  Positioned(
                    bottom: 40.0,
                    child: Row(
                      children: List.generate(
                        onboardingScreenItems.length,
                        (index) => Padding(
                          padding: index == 0
                              ? const EdgeInsets.all(0)
                              : const EdgeInsets.only(left: 8.0),
                          child: IndicatorDot(isActive: index == _currentPage),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 34.0,
                    right: 48.0,
                    child: _currentPage == onboardingScreenItems.length - 1
                        ? GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,
                                letterSpacing: 0.37,
                                height: 1.36,
                              ),
                            ),
                          )
                        : Container(),
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
