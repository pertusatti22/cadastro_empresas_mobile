import 'package:sistemadecadastro/src/models/pessoa.dart';

class PessoaJuridica extends Pessoa {
  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;

  PessoaJuridica(this.razaoSocial, this.nomeFantasia, this.cnpj,
      {required super.socio, required super.endereco});
}
