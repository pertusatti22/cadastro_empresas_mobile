import 'package:flutter/material.dart';
import 'package:sistemadecadastro/theme/custom_colors.dart';
import 'package:sistemadecadastro/widgets/custom_app_bar.dart';

class ListarEmpresas extends StatefulWidget {
  const ListarEmpresas({Key? key}) : super(key: key);

  @override
  State<ListarEmpresas> createState() => _ListarEmpresasState();
}

class _ListarEmpresasState extends State<ListarEmpresas> {
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
            Text(
              'Empresa',
              style: Theme.of(context).textTheme.headline2,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 48),
                child: Column(
                  children: [
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
                      initialValue: 'Mirella Kamilly Letícia Barbosa',
                      style: Theme.of(context).textTheme.headline6,
                      decoration: InputDecoration(
                        labelText: 'Sócio',
                        labelStyle: Theme.of(context).textTheme.headline3,
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
                      initialValue: 'Mirella Kamilly Letícia Barbosa',
                      style: Theme.of(context).textTheme.headline6,
                      decoration: InputDecoration(
                        labelText: 'Sócio',
                        labelStyle: Theme.of(context).textTheme.headline3,
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // TODO Alterar cor dos botões
            // TODO Corrigir questão do espaço
          ],
        ),
      ),
    );
  }
}
