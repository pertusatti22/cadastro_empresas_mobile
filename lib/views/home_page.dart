import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sistemadecadastro/widgets/custom_app_bar.dart';

import '../theme/custom_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressedDetail() {
    log('onPressedDetail');
    Navigator.of(context).pushNamed('/home/read');
  }

  void onPressedRemove() {
    log('onPressedRemove');
  }

  void onPressedAdd() {
    log('onPressedAdd');
    Navigator.of(context).pushNamed('/home/create');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'Empresa',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 12,
            ),
            Card(
              color: CustomColors.gray50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: onPressedRemove,
                            child: Text(
                              'Excluir',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: onPressedDetail,
                            child: const Text(
                              'Detalhar',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Card(
              color: CustomColors.gray50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: onPressedRemove,
                            child: Text(
                              'Excluir',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: onPressedDetail,
                            child: const Text(
                              'Detalhar',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.primary,
        onPressed: onPressedAdd,
        tooltip: 'Cadastrar Empresa',
        child: const Icon(
          Icons.add,
          color: CustomColors.gray100,
        ),
      ),
    );
  }
}
