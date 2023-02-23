import 'package:flutter/material.dart';
import 'package:neon_colors/constants.dart';
import 'package:neon_colors/widgets/onboarding_item.dart';

List<Widget> onboardingScreenItems = [
  const OnboardingItem(),
  const OnboardingItem(),
  const OnboardingItem(),
];

List<Map<String, dynamic>> newMovieItems = [
  {
    "poster": kPosterSpiderman,
    "alignment": Alignment.center,
    "details": null,
  },
  {
    "poster": kPosterMatrix,
    "alignment": Alignment.center,
    "details": null,
  },
  {
    "poster": kPosterEternals,
    "alignment": Alignment.bottomCenter,
    "details": {
      "poster": kPoster2Eternals,
    },
  },
];

List<Map<String, dynamic>> upcMovieItems = [
  {
    "poster": kPosterAquaman,
    "alignment": Alignment.topLeft,
    "details": null,
  },
  {
    "poster": kPosterBatman,
    "alignment": Alignment.center,
    "details": null,
  },
  {
    "poster": kPosterSonic,
    "alignment": Alignment.center,
    "details": null,
  },
];
