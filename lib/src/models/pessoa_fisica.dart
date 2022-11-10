import 'package:sistemadecadastro/src/models/pessoa.dart';

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

  factory PessoaFisica.fromJson(Map<String, dynamic> json) {
    return PessoaFisica(
        id: json['id'],
        type: json['type'],
        endereco: json['endereco'],
        nomeCompleto: json['nomeCompleto'],
        cpf: json['cpf']);
  }

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
