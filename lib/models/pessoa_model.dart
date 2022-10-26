import 'endereco_model.dart';

abstract class PessoaModel {
  late EnderecoModel endereco;
  late TipoPessoa tipoPessoa;

  PessoaModel({required this.endereco, required this.tipoPessoa});
}

enum TipoPessoa { fisica, juridica }
