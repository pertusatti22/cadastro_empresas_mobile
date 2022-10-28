import 'package:flutter/material.dart';
import 'package:sistemadecadastro/src/models/empresa.dart';

class HomeController {
  List<Empresa> empresas = [];
  late final Empresa _empresa;
  final state = ValueNotifier<HomeState>(HomeState.start);

  HomeController([Empresa? empresa]) : _empresa = empresa ?? Empresa();

  Future start() async {
    state.value = HomeState.loading;
    try {
      empresas = await _empresa.listar();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }
