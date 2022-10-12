import 'package:flutter/material.dart';
import 'package:sistemadecadastro/design_system/my_color.dart';

class MyTextTheme {
  static const TextTheme myTheme = TextTheme(
    headline2: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w900,
      fontSize: 24,
      fontFamily: 'rawline',
    ),
    headline3: TextStyle(
      color: MyColor.primary,
      fontWeight: FontWeight.w900,
      fontSize: 16,
    ),
  );
}
