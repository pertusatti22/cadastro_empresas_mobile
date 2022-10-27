import 'package:sistemadecadastro/src/models/pessoa_model.dart';

class PessoaJuridicaModel extends PessoaModel {
  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;

  PessoaJuridicaModel({
    required super.endereco,
    required super.tipoSocio,
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.cnpj,
  });
}
