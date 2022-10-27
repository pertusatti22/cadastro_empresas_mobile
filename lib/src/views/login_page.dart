import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:sistemadecadastro/theme/custom_images.dart';
import 'package:sistemadecadastro/theme/custom_title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  void onPressedLogin() {
    if (email == 'pertusatti22@gmail.com' && password == '123') {
      Navigator.of(context).pushNamed('/home');
      log('Login Successful!');
    } else {
      Navigator.of(context).pushNamed('/');
    }
  }

  void onPressedRegister() {
    log('onPressedRegister');
  }

  void onPressedGoogle() {
    Navigator.of(context).pushNamed('/home');
    log('Google Login Successful!');
  }

  void onPressedRecoverPassword() {
    Navigator.of(context).pushNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 96,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  logo,
                  height: 48,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextFormField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'Digite seu e-mail',
                labelStyle: Theme.of(context).textTheme.subtitle1,
                border: const UnderlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextFormField(
              onChanged: (text) {
                password = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Digite sua Senha',
                labelStyle: Theme.of(context).textTheme.subtitle1,
                border: const UnderlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onPressedRecoverPassword,
                  child: Text(
                    'Recuperar a senha',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onPressedLogin,
                    child: const Text(
                      'Entrar',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 160,
                  child: OutlinedButton(
                    onPressed: onPressedRegister,
                    child: Text(
                      'Cadastrar-se',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: onPressedGoogle,
            )
          ],
        ),
      ),
    ));
  }
}
