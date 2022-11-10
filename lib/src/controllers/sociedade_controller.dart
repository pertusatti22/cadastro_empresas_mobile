import 'package:cadastro_empresas_mobile/src/repositories/sociedade_repository.dart';
import 'package:flutter/cupertino.dart';

import '../models/sociedade.dart';

class SociedadeController {
  List<Sociedade> empresas = [];

  final SociedadeRepository _sociedadeRepository;
  final state = ValueNotifier<HomeState>(HomeState.start);

  SociedadeController([SociedadeRepository? repository])
      : _sociedadeRepository = repository ?? SociedadeRepository();

  Future start() async {
    empresas = await _sociedadeRepository.fetchEmpresas();
    state.value = HomeState.success;
    // state.value = HomeState.loading;
    // try {
    //   empresas = await _sociedadeRepository.fetchEmpresas();
    //   print('$empresas');
    //   state.value = HomeState.success;
    // } catch (e) {
    //   state.value = HomeState.error;
    // }
  }
}

enum HomeState { start, loading, success, error }
