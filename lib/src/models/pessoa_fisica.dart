import 'package:sistemadecadastro/src/models/endereco.dart';
import 'package:sistemadecadastro/src/models/pessoa.dart';

class PessoaFisica extends Pessoa {
  String? nome;
  String? cpf;

  PessoaFisica.fromJson(Map<String, dynamic> json) {
    super.socio = Socio.fisica;
    nome = json['nome'];
    cpf = json['cpf'];
    endereco = Endereco.fromJson(json['endereco']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['cpf'] = cpf;
    data['endereco'] = endereco.toJson();
    return data;
  }
}
