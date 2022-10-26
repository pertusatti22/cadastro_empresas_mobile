import 'package:sistemadecadastro/models/pessoa_model.dart';

class PessoaJuridicaModel extends PessoaModel {
  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;

  PessoaJuridicaModel(
      {required this.razaoSocial,
      required this.nomeFantasia,
      required this.cnpj,
      required super.endereco,
      super.tipoPessoa = TipoPessoa.juridica});
}
