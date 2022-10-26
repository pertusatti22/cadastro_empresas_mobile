import 'package:sistemadecadastro/src/models/pessoa_juridica_model.dart';
import 'package:sistemadecadastro/src/models/pessoa_model.dart';
import 'package:uuid/uuid.dart';

class EmpresaModel extends PessoaJuridicaModel {
  var id = const Uuid().v4();
  final createdAd = DateTime.now();
  late String telefone;
  late PessoaModel socio;

  EmpresaModel({
    required super.razaoSocial,
    required super.nomeFantasia,
    required super.cnpj,
    required super.endereco,
  });
}
