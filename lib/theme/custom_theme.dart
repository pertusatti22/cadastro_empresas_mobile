import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sistemadecadastro/theme/custom_colors.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(0xFFB4B4B4, <int, Color>{
        50: Color(0xFFFAFAFA),
        100: Color(0xFFF5F5F5),
        200: Color(0xFFEEEEEE),
        300: Color(0xFFE0E0E0),
        400: Color(0xFFBDBDBD),
        500: Color(0xFFB4B4B4),
        600: Color(0xFF757575),
        700: Color(0xFF616161),
        800: Color(0xFF424242),
        900: Color(0xFF212121),
      }),
      textTheme: TextTheme(
        headline2: GoogleFonts.raleway(
          color: CustomColors.primary,
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
        headline3: GoogleFonts.raleway(
          color: CustomColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
        headline4: GoogleFonts.raleway(
          color: CustomColors.gray400,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
        subtitle1: GoogleFonts.raleway(
          color: CustomColors.primary,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
        subtitle2: GoogleFonts.raleway(
          color: CustomColors.primary,
          fontSize: 14,
          fontWeight: FontWeight.w800,
        ),
      ));
}
