import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF0D47A1); // Cosmic Blue
  static const Color secondary = Color(0xFFE0E0E0); // Falcon White
  static const Color background = Color(0xFF000000); // Deep Space Black
  static const Color surface = Color(0xFF121212); // Nebula Grey
  static const Color error = Color(0xFFB00020);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color info = Color(0xFF2196F3);

  static const Color accentBlue = Color(0xFF1976D2);
  static const Color spaceGrey = Color(0xFF2C2C2C);
  static const Color nebulaBlue = Color(0xFF001233);
  static const Color starWhite = Color(0xFFFFFFFF);

  // Gradients
  static const LinearGradient cosmicGradient = LinearGradient(
    colors: [primary, accentBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
