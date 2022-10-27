import 'package:flutter/cupertino.dart';
import 'package:sistemadecadastro/src/database/database.dart';

class DetalharEmpresaController {
  List<Database> empresas = [];
  late final Database _database;
  final state = ValueNotifier<DetalharEmpresaState>(DetalharEmpresaState.start);

  DetalharEmpresaController([Database? database])
      : _database = database ?? Database();

  Future start() async {
    state.value = DetalharEmpresaState.loading;
    try {
      empresas = await _database.listMock();
      state.value = DetalharEmpresaState.success;
    } catch (e) {
      state.value = DetalharEmpresaState.error;
    }
  }
}

enum DetalharEmpresaState { start, loading, success, error }
