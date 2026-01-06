import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: AppTextTheme.fontFamily,
    brightness: Brightness.light,

    textTheme: AppTextTheme.light.apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.textPrimary,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: AppTextTheme.fontFamily,
    brightness: Brightness.dark,

    textTheme: AppTextTheme.light.apply(
      bodyColor: AppColors.textOnDark,
      displayColor: AppColors.textOnDark,
    ),
  );
}
