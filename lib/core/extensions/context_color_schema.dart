import 'package:flutter/material.dart';

extension ColorSchemeX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}
