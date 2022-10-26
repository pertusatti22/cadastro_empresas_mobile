import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sistemadecadastro/theme/custom_colors.dart';
import 'package:sistemadecadastro/widgets/custom_app_bar.dart';

class CadastrarEmpresaPage extends StatefulWidget {
  const CadastrarEmpresaPage({Key? key}) : super(key: key);

  @override
  State<CadastrarEmpresaPage> createState() => _CadastrarEmpresaPageState();
}

class _CadastrarEmpresaPageState extends State<CadastrarEmpresaPage> {
  void onPressedCreate() {
    log('onPressedAdd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'Cadastrar Empresa',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Dados da Empresa',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                TextFormField(
                  style: Theme.of(context).textTheme.subtitle1,
                  decoration: InputDecoration(
                    labelText: 'CNPJ',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.subtitle1,
                  decoration: InputDecoration(
                    labelText: 'Razão Social',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Nome Fantasia',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 2,
                  maxLines: null,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Dados do Sócio',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                TextFormField(
                  style: Theme.of(context).textTheme.subtitle1,
                  decoration: InputDecoration(
                    labelText: 'CPF/CNPJ',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.subtitle1,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 2,
                  maxLines: null,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.primary,
        onPressed: onPressedCreate,
        tooltip: 'Cadastrar Empresa',
        child: const Icon(
          Icons.check,
          color: CustomColors.gray100,
        ),
      ),
    );
  }
}
