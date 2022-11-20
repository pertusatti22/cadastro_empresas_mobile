import 'package:cadastro_empresas_mobile/src/models/pessoa.dart';

import 'endereco.dart';

class PessoaFisica extends Pessoa {
  String? nomeCompleto;
  String? cpf;

  PessoaFisica({
    required int id,
    required Type type,
    required Endereco? endereco,
    required this.nomeCompleto,
    required this.cpf,
  }) : super(id, type, endereco);

  // Pessoa.fromJson(Map<String, dynamic> json) {
  //       nomeCompleto= json['nomeCompleto'];
  //        cpf= json['cpf'];
  // }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    if (endereco != null) {
      data['endereco'] = endereco!.toJson();
    }
    data['nomeCompleto'] = nomeCompleto;
    data['cpf'] = cpf;
    return data;
  }
}
