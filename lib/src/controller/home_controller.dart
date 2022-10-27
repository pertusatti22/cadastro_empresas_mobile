import 'package:flutter/cupertino.dart';
import 'package:sistemadecadastro/src/database/database.dart';

class HomeController {
  List<Database> empresas = [];
  late final Database _database;
  final state = ValueNotifier<HomeState>(HomeState.start);

  HomeController([Database? database]) : _database = database ?? Database();

  Future start() async {
    state.value = HomeState.loading;
    try {
      empresas = await _database.listMock();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }
