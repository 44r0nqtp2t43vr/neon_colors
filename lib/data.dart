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
      "title": 'Eternals',
      "year": '2021',
      "category": 'Action-Adventure-Fantasy',
      "duration": '2h36m',
      "rating": 3,
      "poster": kPoster2Eternals,
      "description":
          'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.',
      "cast": [
        {
          "name": "Angelina Jolie",
          "image": kImageAngelinaJolie,
        },
        {
          "name": "Gemma Chan",
          "image": kImageGemmaChan,
        },
        {
          "name": "Salma Hayek",
          "image": kImageSalmaHayek,
        },
        {
          "name": "Richard Madden",
          "image": kImageRichardMadden,
        },
      ],
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
