import 'package:flutter/material.dart';
import 'package:sistemadecadastro/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              'Empresa',
              style: Theme.of(context).textTheme.headline2,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    TextFormField(
                      initialValue: 'Arthur e Andreia Telas Ltda',
                      readOnly: true,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Razão Social',
                        labelStyle: Theme.of(context).textTheme.subtitle2,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      initialValue: 'Telas',
                      readOnly: true,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Nome Fantasia',
                        labelStyle: Theme.of(context).textTheme.subtitle2,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      initialValue: '(11) 9 9572-6906',
                      readOnly: true,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Telefone',
                        labelStyle: Theme.of(context).textTheme.subtitle2,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      initialValue: 'Loc. Auto',
                      readOnly: true,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Sócio',
                        labelStyle: Theme.of(context).textTheme.subtitle2,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 48),
                child: Column(
                  children: [
                    TextFormField(
                      initialValue: 'Elisa e Flávia Pães e Doces ME',
                      readOnly: true,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Razão Social',
                        labelStyle: Theme.of(context).textTheme.subtitle2,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      initialValue: 'Pães e Doces',
                      readOnly: true,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Nome Fantasia',
                        labelStyle: Theme.of(context).textTheme.subtitle2,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      initialValue: '(19) 9 8838-0630',
                      readOnly: true,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Telefone',
                        labelStyle: Theme.of(context).textTheme.subtitle2,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      initialValue: 'Mirella Kamilly Letícia Barbosa',
                      readOnly: true,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Sócio',
                        labelStyle: Theme.of(context).textTheme.subtitle2,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
