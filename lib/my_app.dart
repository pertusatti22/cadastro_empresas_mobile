import 'package:flutter/material.dart';
import 'package:sistemadecadastro/theme/custom_theme.dart';
import 'package:sistemadecadastro/theme/custom_title.dart';
import 'package:sistemadecadastro/views/cadastrar_empresa_page.dart';
import 'package:sistemadecadastro/views/detalhar_empresa_page.dart';
import 'package:sistemadecadastro/views/home_page.dart';
import 'package:sistemadecadastro/views/login_page.dart';
import 'package:sistemadecadastro/views/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: CustomTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/home/create': (context) => const CadastrarEmpresaPage(),
        '/home/read': (context) => const DetalharEmpresaPage(),
      },
    );
  }
}
