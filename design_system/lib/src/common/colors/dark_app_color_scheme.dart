import 'package:flutter/material.dart';

class DarkAppThemeColors {
  static const primary = Color(0xff055AA3);
  static const highlight = Color(0xffEDF4F8);
  static const description = Color(0xff51565A);
  static const card = Color(0xff172026);
  static const background = Color(0xff121517);
  static const error = Color(0xffCC1100);
}

class DarkAppColorScheme extends ColorScheme {
  const DarkAppColorScheme({
    super.brightness = Brightness.dark,
    super.primary = DarkAppThemeColors.primary,
    super.onPrimary = DarkAppThemeColors.background,
    super.secondary = DarkAppThemeColors.background,
    super.onSecondary = DarkAppThemeColors.highlight,
    super.error = DarkAppThemeColors.error,
    super.onError = DarkAppThemeColors.highlight,
    super.background = DarkAppThemeColors.background,
    super.onBackground = DarkAppThemeColors.highlight,
    super.surface = DarkAppThemeColors.highlight,
    super.onSurface = DarkAppThemeColors.background,
    super.surfaceVariant = DarkAppThemeColors.card,
  });
}
