import 'package:sistemadecadastro/src/models/pessoa.dart';

import 'endereco.dart';

class PessoaJuridica extends Pessoa {
  String? cnpj;
  String? razaoSocial;
  String? nomeFantasia;
  String? telefone;

  PessoaJuridica({
    required int id,
    required Type type,
    required Endereco? endereco,
    required this.cnpj,
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.telefone,
  }) : super(id, type, endereco);

  factory PessoaJuridica.fromJson(Map<String, dynamic> json) {
    return PessoaJuridica(
        id: json['id'],
        type: json['type'],
        endereco: json['endereco'],
        cnpj: json['cnpj'],
        razaoSocial: json['razaoSocial'],
        nomeFantasia: json['nomeFantasia'],
        telefone: json['telefone']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    if (endereco != null) {
      data['endereco'] = endereco!.toJson();
    }
    data['cnpj'] = cnpj;
    data['razaoSocial'] = razaoSocial;
    data['nomeFantasia'] = nomeFantasia;
    data['telefone'] = telefone;
    return data;
  }
}
