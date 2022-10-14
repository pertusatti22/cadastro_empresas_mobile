import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sistemadecadastro/theme/custom_colors.dart';
import 'package:sistemadecadastro/widgets/custom_primary_button.dart';

import '../widgets/custom_app_bar.dart';
import 'cadastrar_empresa.dart';

class BuscarEmpresa extends StatefulWidget {
  const BuscarEmpresa({Key? key}) : super(key: key);

  @override
  State<BuscarEmpresa> createState() => _BuscarEmpresaState();
}

class _BuscarEmpresaState extends State<BuscarEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: CustomColors.primary),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
          child: CustomAppBar(),
        ),
        backgroundColor: CustomColors.gray100,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO estilizar botao pesquisa
            // TODO corrigir erro de estourar página
            const CustomPrimaryButton(label: 'Search'),
            Text(
              'Empresa',
              style: Theme.of(context).textTheme.headline2,
            ),
            TextFormField(
              initialValue: '11.941.838/0001-04',
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                labelText: 'CNPJ',
                labelStyle: Theme.of(context).textTheme.headline3,
                border: const UnderlineInputBorder(),
              ),
            ),
            TextFormField(
              initialValue: 'Elisa e Flávia Pães e Doces ME',
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                labelText: 'Razão Social',
                labelStyle: Theme.of(context).textTheme.headline3,
                border: const UnderlineInputBorder(),
              ),
            ),
            TextFormField(
              initialValue: 'Pães e Doces',
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                labelText: 'Nome Fantasia',
                labelStyle: Theme.of(context).textTheme.headline3,
                border: const UnderlineInputBorder(),
              ),
            ),
            TextFormField(
              initialValue: '(19) 9 8838-0630',
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                labelText: 'Telefone',
                labelStyle: Theme.of(context).textTheme.headline3,
                border: const UnderlineInputBorder(),
              ),
            ),
            TextFormField(
              initialValue:
                  'Rua Três, 338, Vila Industrial, Piracicaba/SP, 13.412-233',
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                labelText: 'Endereço',
                labelStyle: Theme.of(context).textTheme.headline3,
                border: const UnderlineInputBorder(),
              ),
            ),
            Text(
              'Sócio',
              style: Theme.of(context).textTheme.headline2,
            ),
            TextFormField(
              initialValue: '763.679.800-08',
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                labelText: 'CPF/CNPJ',
                labelStyle: Theme.of(context).textTheme.headline3,
                border: const UnderlineInputBorder(),
              ),
            ),
            TextFormField(
              initialValue: 'Mirella Kamilly Letícia Barbosa',
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                labelText: 'Nome',
                labelStyle: Theme.of(context).textTheme.headline3,
                border: const UnderlineInputBorder(),
              ),
            ),
            TextFormField(
              initialValue:
                  'Rua Ulisses Bueno, 175, Vila Rosa, Aparecida de Goiânia/GO, 74.935-870',
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                labelText: 'Endereço',
                labelStyle: Theme.of(context).textTheme.headline3,
                border: const UnderlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.primary,
        onPressed: () {
          log('Cadastrar');
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CadastrarEmpresa(),
            ),
          );
        },
        tooltip: 'Cadastrar Empresa',
        child: const Icon(
          Icons.add,
          color: CustomColors.gray100,
        ),
      ),
    );
  }
}
