import 'package:flutter/material.dart';
import 'package:sistemadecadastro/design_system/my_color.dart';

class MyTextTheme {
  static const TextTheme myTheme = TextTheme(
    headline2: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w900,
      fontSize: 32,
      fontFamily: 'rawline',
    ),
    headline3: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w900,
      fontSize: 20,
      fontFamily: 'rawline',
    ),
    subtitle1: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: 'rawline',
    ),
    subtitle2: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: 'rawline',
    ),
  );
}
