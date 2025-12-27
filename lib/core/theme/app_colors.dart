import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF6200EE);
  static const Color secondary = Color(0xFF03DAC6);

  static const lightScheme = ColorScheme.light(
    primary: primary,
    secondary: secondary,
    surface: Colors.white,
    error: Color(0xFFB00020),
  );

  static const darkScheme = ColorScheme.dark(
    primary: primary,
    secondary: secondary,
    surface: Color(0xFF121212),
    // error: Color(0xFFCF6679),
  );

  // static const int primaryColor = 0xFF6200EE;
  // static const int primaryVariantColor = 0xFF3700B3;
  // static const int secondaryColor = 0xFF03DAC6;
  // static const int secondaryVariantColor = 0xFF018786;
  // static const int backgroundColor = 0xFFFFFFFF;
  // static const int surfaceColor = 0xFFFFFFFF;
  // static const int errorColor = 0xFFB00020;
  // static const int onPrimaryColor = 0xFFFFFFFF;
  // static const int onSecondaryColor = 0xFF000000;
  // static const int onBackgroundColor = 0xFF000000;
  // static const int onSurfaceColor = 0xFF000000;
  // static const int onErrorColor = 0xFFFFFFFF;
}
