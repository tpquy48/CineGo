import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'context_text_theme.dart';

extension CineGoTextX on BuildContext {
  /// Movie title (detail screen)
  TextStyle get movieTitle => textTheme.displayMedium!;

  /// Movie card title (home list)
  TextStyle get movieCardTitle => textTheme.titleMedium!;

  /// Movie overview / description
  TextStyle get movieOverview => textTheme.bodyLarge!;

  /// Metadata (genre, duration)
  TextStyle get movieMeta => textTheme.labelMedium!.copyWith(color: AppColors.textSecondary);

  /// Rating text
  TextStyle get rating =>
      textTheme.labelLarge!.copyWith(color: AppColors.accent, fontWeight: FontWeight.w600);
}
