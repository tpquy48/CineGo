import 'package:flutter/material.dart';

class AppTextTheme {
  static const String fontFamily = 'Inter'; // or Poppins / SF Pro

  static TextTheme light = const TextTheme(
    // Large titles (Movie name, Hero title)
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, height: 1.2),

    displayMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),

    displaySmall: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),

    // Section titles
    headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),

    headlineMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),

    headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),

    // Card titles / list items
    titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),

    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

    // Main content (movie overview)
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),

    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, height: 1.4),

    // Metadata (genre, runtime, rating)
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),

    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),

    labelSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
  );
}
