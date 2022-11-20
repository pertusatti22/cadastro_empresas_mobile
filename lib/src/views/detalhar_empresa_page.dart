import 'dart:developer';

import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';
import '../controllers/sociedade_controller.dart';

class DetalharEmpresaPage extends StatefulWidget {
  static const routeName = '/home/read';

  const DetalharEmpresaPage({Key? key}) : super(key: key);

  @override
  State<DetalharEmpresaPage> createState() => _DetalharEmpresaPageState();
}

class _DetalharEmpresaPageState extends State<DetalharEmpresaPage> {
  final controller = SociedadeController();

  _start() {
    return Container();
  }

  _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  _success() {
    return ListView.builder(
        itemCount: controller.empresas.length,
        itemBuilder: (context, id) {
          var empresa = controller.empresas[id];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Detalhar Empresa',
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
                        initialValue: empresa.pessoaJuridica?.cnpj,
                        readOnly: true,
                        style: Theme.of(context).textTheme.headline4,
                        decoration: InputDecoration(
                          labelText: 'CNPJ',
                          labelStyle: Theme.of(context).textTheme.subtitle2,
                          border: const UnderlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        initialValue: empresa.pessoaJuridica?.razaoSocial,
                        readOnly: true,
                        style: Theme.of(context).textTheme.headline4,
                        decoration: InputDecoration(
                          labelText: 'Razão Social',
                          labelStyle: Theme.of(context).textTheme.subtitle2,
                          border: const UnderlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        initialValue: empresa.pessoaJuridica?.nomeFantasia,
                        readOnly: true,
                        style: Theme.of(context).textTheme.headline4,
                        decoration: InputDecoration(
                          labelText: 'Nome Fantasia',
                          labelStyle: Theme.of(context).textTheme.subtitle2,
                          border: const UnderlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        initialValue: empresa.pessoaJuridica?.telefone,
                        readOnly: true,
                        style: Theme.of(context).textTheme.headline4,
                        decoration: InputDecoration(
                          labelText: 'Telefone',
                          labelStyle: Theme.of(context).textTheme.subtitle2,
                          border: const UnderlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        initialValue:
                            empresa.pessoaJuridica?.endereco.toString(),
                        readOnly: true,
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
                        initialValue: 'teste', //empresa.pessoa?.id.toString(),
                        readOnly: true,
                        style: Theme.of(context).textTheme.headline4,
                        decoration: InputDecoration(
                          labelText: 'CPF',
                          labelStyle: Theme.of(context).textTheme.subtitle2,
                          border: const UnderlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        initialValue:
                            'teste', //empresa.pessoa?.type.toString(),
                        readOnly: true,
                        style: Theme.of(context).textTheme.headline4,
                        decoration: InputDecoration(
                          labelText: 'Sócio',
                          labelStyle: Theme.of(context).textTheme.subtitle2,
                          border: const UnderlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        initialValue:
                            'teste', //empresa.pessoa?.endereco.toString(),
                        readOnly: true,
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
          );
        });
  }

  _error() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          controller.start();
        },
        child: const Text('Tentar novamente'),
      ),
    );
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.loading:
        return _loading();
      case HomeState.error:
        return _error();
      case HomeState.success:
        return _success();
      default:
        return _start();
    }
  }

  @override
  void initState() {
    super.initState();

    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    log(id.toString());
    return Scaffold(
      appBar: const CustomAppBar(),
      body: AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return stateManagement(controller.state.value);
        },
      ),
    );
  }
}
