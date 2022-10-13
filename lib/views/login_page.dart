import 'package:flutter/material.dart';
import 'package:sistemadecadastro/design_system/my_button.dart';

import '../design_system/my_images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 128, 24, 48),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    logo,
                    height: 58,
                  ),
                  Text(
                    'Cadastro de Empresas',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(42, 48, 42, 4),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: Theme.of(context).textTheme.headline3,
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: Theme.of(context).textTheme.headline3,
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(200, 4, 0, 16),
              child: Text(
                'Recuperar a senha',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(42, 16, 42, 32),
              child: Row(
                children: [
                  Expanded(
                    child: MyButton(label: 'Entrar', inverted: false),
                  ),
                ],
              ),
            ),
            MyButton(label: 'Cadastrar-se', inverted: true),
          ],
        ),
      ),
    );
  }
}
// TODO pensar em outras soluções além dos Paddings
// TODO melhorar botão Entrar
// TODO melhorar botão cadastrar-se
// TODO Add botão google
