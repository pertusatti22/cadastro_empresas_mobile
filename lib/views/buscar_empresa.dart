import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sistemadecadastro/design_system/my_color.dart';
import 'package:sistemadecadastro/design_system/my_header.dart';

class CadastrarEmpresa extends StatefulWidget {
  const CadastrarEmpresa({Key? key}) : super(key: key);

  @override
  State<CadastrarEmpresa> createState() => _CadastrarEmpresaState();
}

class _CadastrarEmpresaState extends State<CadastrarEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: MyColor.primary),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
          child: MyHeader(),
        ),
        backgroundColor: MyColor.gray100,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Empresa',
            style: Theme.of(context).textTheme.headline2,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'CNPJ',
              labelStyle: Theme.of(context).textTheme.headline3,
              border: const UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Razão Social',
              labelStyle: Theme.of(context).textTheme.headline3,
              border: const UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nome Fantasia',
              labelStyle: Theme.of(context).textTheme.headline3,
              border: const UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Telefone',
              labelStyle: Theme.of(context).textTheme.headline3,
              border: const UnderlineInputBorder(),
            ),
          ),
          TextFormField(
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
            decoration: InputDecoration(
              labelText: 'CPF/CNPJ',
              labelStyle: Theme.of(context).textTheme.headline3,
              border: const UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nome',
              labelStyle: Theme.of(context).textTheme.headline3,
              border: const UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Endereço',
              labelStyle: Theme.of(context).textTheme.headline3,
              border: const UnderlineInputBorder(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColor.primary,
        onPressed: () {
          log('Salvando');
        },
        tooltip: 'Cadastrar Empresa',
        child: const Icon(
          Icons.add,
          color: MyColor.gray100,
        ),
      ),
    );
  }
}
