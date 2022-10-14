import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sistemadecadastro/theme/custom_colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: CustomColors.primary,
    textTheme: TextTheme(
      headline2: GoogleFonts.raleway(
        color: CustomColors.primary,
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ),
      headline3: GoogleFonts.raleway(
        color: CustomColors.primary,
        fontSize: 16,
        fontWeight: FontWeight.w800,
      ),
      headline4: GoogleFonts.raleway(
        color: CustomColors.gray400,
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      subtitle1: GoogleFonts.raleway(
        color: CustomColors.primary,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: GoogleFonts.raleway(
        color: CustomColors.primary,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: CustomColors.primary,
        side: const BorderSide(color: CustomColors.primary, width: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    ),
  );
}
