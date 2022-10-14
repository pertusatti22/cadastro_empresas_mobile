import 'package:flutter/material.dart';
import 'package:sistemadecadastro/theme/custom_theme.dart';
import 'package:sistemadecadastro/views/splash_page.dart';

class MyApp extends StatelessWidget {
  final String title = 'Cadastro de Empresas';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: SplashPage(title: title),
      theme: CustomTheme.lightTheme,
    );
  }
}
