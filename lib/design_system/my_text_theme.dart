import 'package:flutter/material.dart';
import 'package:sistemadecadastro/design_system/my_color.dart';

class MyTextTheme {
  static const TextTheme myTheme = TextTheme(
    headline1: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w900,
      fontSize: 32,
      fontFamily: 'rawline',
    ),
    headline2: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w900,
      fontSize: 18,
      fontFamily: 'rawline',
    ),
    headline3: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      fontFamily: 'rawline',
    ),
    headline4: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      fontFamily: 'rawline',
    ),
    headline5: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: 'rawline',
    ),
    headline6: TextStyle(
      color: MyColor.gray400,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      fontFamily: 'rawline',
    ),
  );
}
