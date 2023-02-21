import 'package:flutter/material.dart';
import 'package:neon_colors/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Neon Colors',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
