import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sistemadecadastro/src/controller/home_page_controller.dart';
import 'package:sistemadecadastro/theme/custom_colors.dart';
import 'package:sistemadecadastro/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homePageController = HomePageController();

  _start() {
    return Container();
  }

  _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  _success() {
    return ListView.builder(
        itemCount: homePageController.empresas.length,
        itemBuilder: (context, index) {
          var empresa = homePageController.empresas[index];
          return Card(
            color: CustomColors.gray50,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: empresa.razaoSocial,
                    readOnly: true,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                      labelText: 'Razão Social',
                      labelStyle: Theme.of(context).textTheme.subtitle2,
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    initialValue: empresa.nomeFantasia,
                    readOnly: true,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                      labelText: 'Nome Fantasia',
                      labelStyle: Theme.of(context).textTheme.subtitle2,
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    initialValue: empresa.telefone,
                    readOnly: true,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                      labelText: 'Telefone',
                      labelStyle: Theme.of(context).textTheme.subtitle2,
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    initialValue: empresa.socioModel?.nome,
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
          );
        });
  }

  _error() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          homePageController.start();
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

    homePageController.start();
  }

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
      body: AnimatedBuilder(
        animation: homePageController.state,
        builder: (context, child) {
          return stateManagement(homePageController.state.value);
        },
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
