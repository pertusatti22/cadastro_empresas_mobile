import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sistemadecadastro/theme/custom_title.dart';
import 'package:sistemadecadastro/views/splash_page.dart';

import '../theme/custom_images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void onPressed() {
    log('clicou');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 128,
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
              height: 64.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'Digite seu e-mail',
                labelStyle: Theme.of(context).textTheme.subtitle1,
                border: const UnderlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Digite sua Senha',
                labelStyle: Theme.of(context).textTheme.subtitle1,
                border: const UnderlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Text(
                    'Recuperar a senha',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SplashPage(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(
                      'Entrar',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
