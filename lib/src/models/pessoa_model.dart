import 'endereco_model.dart';

abstract class PessoaModel {
  late TipoSocio tipoSocio;
  late EnderecoModel endereco;

  PessoaModel(this.endereco, this.tipoSocio);
}

enum TipoSocio { fisica, juridica }
