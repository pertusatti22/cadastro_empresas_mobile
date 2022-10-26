import 'package:sistemadecadastro/src/models/pessoa_model.dart';

class PessoaFisicaModel extends PessoaModel {
  String? nome;
  String? cpf;

  PessoaFisicaModel(
      {required this.nome,
      required this.cpf,
      required super.endereco,
      super.tipoPessoa = TipoPessoa.fisica});
}
