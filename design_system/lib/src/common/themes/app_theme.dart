import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../colors/dark_app_color_scheme.dart';
import '../colors/light_app_color_scheme.dart';
import '../extensions/app_text_styles_extension.dart';

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: const LightAppColorScheme(),
    extensions: [
      AppTextStylesExtension(
        headline1: GoogleFonts.poppins(
          fontSize: 20,
          color: LightAppThemeColors.highlight,
          fontWeight: FontWeight.w600,
        ),
        headline2: GoogleFonts.poppins(
          fontSize: 16,
          color: LightAppThemeColors.highlight,
          fontWeight: FontWeight.w600,
        ),
        bodyText1: GoogleFonts.montserrat(
          fontSize: 14,
          color: LightAppThemeColors.description,
          fontWeight: FontWeight.w400,
        ),
        description: GoogleFonts.montserrat(
          fontSize: 12,
          color: LightAppThemeColors.description,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );

  static final dark = ThemeData(
    useMaterial3: true,
    colorScheme: const DarkAppColorScheme(),
    extensions: [
      AppTextStylesExtension(
        headline1: GoogleFonts.poppins(
          fontSize: 20,
          color: DarkAppThemeColors.highlight,
          fontWeight: FontWeight.w600,
        ),
        headline2: GoogleFonts.poppins(
          fontSize: 16,
          color: DarkAppThemeColors.highlight,
          fontWeight: FontWeight.w600,
        ),
        bodyText1: GoogleFonts.montserrat(
          fontSize: 14,
          color: DarkAppThemeColors.description,
          fontWeight: FontWeight.w400,
        ),
        description: GoogleFonts.montserrat(
          fontSize: 12,
          color: DarkAppThemeColors.description,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
