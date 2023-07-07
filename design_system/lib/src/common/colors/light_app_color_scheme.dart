import 'package:flutter/material.dart';

class LightAppThemeColors {
  static const primary = Color(0xff055AA3);
  static const highlight = Color(0xff172026);
  static const description = Color(0xff51565A);
  static const card = Color(0xffEDF4F8);
  static const background = Color(0xffD6DFE4);
  static const error = Color(0xffCC1100);
}

class LightAppColorScheme extends ColorScheme {
  const LightAppColorScheme({
    super.brightness = Brightness.dark,
    super.primary = LightAppThemeColors.primary,
    super.onPrimary = LightAppThemeColors.background,
    super.secondary = LightAppThemeColors.background,
    super.onSecondary = LightAppThemeColors.highlight,
    super.error = LightAppThemeColors.error,
    super.onError = LightAppThemeColors.highlight,
    super.background = LightAppThemeColors.background,
    super.onBackground = LightAppThemeColors.highlight,
    super.surface = LightAppThemeColors.highlight,
    super.onSurface = LightAppThemeColors.background,
    super.surfaceVariant = LightAppThemeColors.card,
  });
}
