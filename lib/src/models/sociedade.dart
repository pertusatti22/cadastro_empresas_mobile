import 'package:cadastro_empresas_mobile/src/models/pessoa.dart';
import 'package:cadastro_empresas_mobile/src/models/pessoa_fisica.dart';
import 'package:cadastro_empresas_mobile/src/models/pessoa_juridica.dart';

class Sociedade {
  int? id;
  PessoaJuridica? pessoaJuridica;
  Pessoa? pessoa;

  Sociedade(
      {required this.id, required this.pessoaJuridica, required this.pessoa});

  factory Sociedade.fromJson(Map<String, dynamic> json) {
    return Sociedade(
        id: json['id'],
        pessoa: Pessoa.fromJson(json) as PessoaFisica,
        pessoaJuridica: PessoaJuridica.fromJson(json));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (pessoaJuridica != null) {
      data['pessoaJuridica'] = pessoaJuridica!.toJson();
    }
    if (pessoa != null) {
      data['pessoa'] = pessoa!.toJson();
    }
    return data;
  }
}
