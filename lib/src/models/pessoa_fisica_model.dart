import 'package:sistemadecadastro/src/models/endereco_model.dart';
import 'package:sistemadecadastro/src/models/pessoa_model.dart';

class PessoaFisicaModel extends PessoaModel {
  String? nome;
  String? cpf;

  PessoaFisicaModel({required this.nome, required this.cpf})
      : super(endereco, tipoSocio);

  PessoaFisicaModel.fromJson(Map<String, dynamic> json) {
    tipoSocio = json['tipoSocio'];
    nome = json['nome'];
    cpf = json['cpf'];
    endereco = EnderecoModel.fromJson(json['endereco']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tipoSocio'] = tipoSocio;
    data['nome'] = nome;
    data['cpf'] = cpf;
    data['endereco'] = endereco.toJson();
    return data;
  }
}
