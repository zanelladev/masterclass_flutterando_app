import 'package:flutter/material.dart';

class AppTextStylesExtension extends ThemeExtension<AppTextStylesExtension> {
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle bodyText1;
  final TextStyle description;

  const AppTextStylesExtension({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.bodyText1,
    required this.description,
  });

  @override
  ThemeExtension<AppTextStylesExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<AppTextStylesExtension> lerp(
      covariant ThemeExtension<AppTextStylesExtension>? other, double t) {
    return this;
  }
}
