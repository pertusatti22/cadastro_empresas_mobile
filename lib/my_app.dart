import 'package:flutter/material.dart';
import 'package:sistemadecadastro/design_system/my_text_theme.dart';
import 'package:sistemadecadastro/theme/custom_colorsme.dart';
import 'package:sistemadecadastro/views/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: CustomColors.primary,
        textTheme: MyTextTheme.myTheme,
      ),
      home: const SplashPage(),
    );
  }
}
