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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
