import 'package:sistemadecadastro/src/models/endereco_model.dart';
import 'package:sistemadecadastro/src/models/pessoa_juridica_model.dart';
import 'package:sistemadecadastro/src/models/socio_model.dart';
import 'package:uuid/uuid.dart';

class EmpresaModel extends PessoaJuridicaModel {
  var id = const Uuid().v4();
  late final createdAt = DateTime.now();
  late String telefone;
  late SocioModel socio;

  EmpresaModel({
    required super.razaoSocial,
    required super.nomeFantasia,
    required super.cnpj,
    required super.endereco,
    required this.socio,
    required this.telefone,
  });

  EmpresaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAd'];
    cnpj = json['cnpj'];
    razaoSocial = json['razaoSocial'];
    nomeFantasia = json['nomeFantasia'];
    telefone = json['telefone'];
    endereco = (json['endereco'] != null
        ? EnderecoModel.fromJson(json['endereco'])
        : null)!;
    socio = json['socio'] != null ? SocioModel.fromJson(json['socio']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createdAd'] = createdAd;
    data['cnpj'] = cnpj;
    data['razaoSocial'] = razaoSocial;
    data['nomeFantasia'] = nomeFantasia;
    data['telefone'] = telefone;
    data['endereco'] = endereco!.toJson();
    data['socio'] = socio!.toJson();
    return data;
  }
}
