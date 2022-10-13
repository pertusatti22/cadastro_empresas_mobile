import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sistemadecadastro/design_system/my_button.dart';
import 'package:sistemadecadastro/design_system/my_color.dart';
import 'package:sistemadecadastro/design_system/my_images.dart';

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    logo,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Cadastro de Empresas',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                )
              ],
            ),
            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: UnderlineInputBorder(),
                  ),
                ),
                const Text(
                  'Recuperar Senha',
                  textAlign: TextAlign.right,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyButton(
                        label: 'Entrar',
                        myColor: MyColor.primary,
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.validate();
                      log('Entrar');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: MyColor.primary,
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      elevation: 10,
                    ),
                    child: const Text('Cadastrar-se')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
