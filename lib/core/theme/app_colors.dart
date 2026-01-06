import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFFF7A1A);
  // static const primary700 = Color(0xFF363680);
  // static const primary600 = Color(0xFF5051BF);
  static const Color primary500 = Color(0xFFFF7A1A);
  // static const primary400 = Color(0xFF8989FF);
  // static const primary300 = Color(0xFFA6A7FF);
  // static const primary200 = Color(0xFFC4C4FF);
  // static const primary100 = Color(0xFFE1E2FF);
  // static const primary50 = Color(0xFFF1F1FF);
  // static const primary10 = Color(0xFFF7F7FF);

  static const splashPrimary = Color(0xFF0F172A);
  static const splashSecondary = Color(0xFF0F172A);

  static const Color secondary = Color(0xFFFF7A1A);

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

  // Text colors
  static const textPrimary = Color(0xFF111111);
  static const textSecondary = Color(0xFF6B7280);
  static const textOnDark = Color(0xFFE5E7EB);

  static const accent = Color(0xFFE50914); // Netflix-style red

  static const neutral100 = Color(0xFF22313F);
  static const neutral80 = Color(0xFF4E5A65);
  static const neutral60 = Color(0xFF7A838C);
  static const neutral40 = Color(0xFFA7ADB2);
  static const neutral20 = Color(0xFFD3D6D9);
  static const neutral10 = Color(0xFFE9EAEC);
  static const neutral5 = Color(0xFFF4F5F5);

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
