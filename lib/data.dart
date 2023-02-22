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
    "poster": kMovieSpiderman,
    "alignment": Alignment.center,
  },
  {
    "poster": kMovieMatrix,
    "alignment": Alignment.center,
  },
  {
    "poster": kMovieEternals,
    "alignment": Alignment.bottomCenter,
  },
];

List<Map<String, dynamic>> upcMovieItems = [
  {
    "poster": kMovieAquaman,
    "alignment": Alignment.topLeft,
  },
  {
    "poster": kMovieBatman,
    "alignment": Alignment.center,
  },
  {
    "poster": kMovieSonic,
    "alignment": Alignment.center,
  },
];
