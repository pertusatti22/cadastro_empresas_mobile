import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sistemadecadastro/src/models/pessoa.dart';
import 'package:sistemadecadastro/src/models/pessoa_juridica.dart';
import 'package:uuid/uuid.dart';

import 'endereco.dart';

class Empresa extends PessoaJuridica {
  var id = const Uuid().v4();
  late final createdAt = DateTime.now();
  late String telefone;

  Empresa(super.razaoSocial, super.nomeFantasia, super.cnpj,
      {required super.socio, required super.endereco}) {
    socio = Socio.juridica;
  }

  Future<List<Empresa>> listar() async {
    final data = await rootBundle.loadString('assets/database/mock.json');
    final list = json.decode(data) as List<dynamic>;
    return list.map((e) => Empresa.fromJson(e)).toList();
  }

  Empresa.fromJson(Map<String, dynamic> json) {
    super.socio = Socio.juridica;
    telefone = json['telefone'];
    razaoSocial = json['nome'];
    nomeFantasia = json['nomeFantasia'];
    cnpj = json['cnpj'];
    endereco = Endereco.fromJson(json['endereco']);
  }



  Database.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAd = json['createdAd'];
    cnpj = json['cnpj'];
    razaoSocial = json['razaoSocial'];
    nomeFantasia = json['nomeFantasia'];
    telefone = json['telefone'];
    enderecoModel = json['endereco'] != null
        ? EnderecoModel.fromJson(json['endereco'])
        : null;
    socioModel =
    json['socio'] != null ? SocioModel.fromJson(json['socio']) : null;
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createdAd'] = createdAt;
    data['cnpj'] = cnpj;
    data['razaoSocial'] = razaoSocial;
    data['nomeFantasia'] = nomeFantasia;
    data['telefone'] = telefone;
    data['endereco'] = endereco!.toJson();
    data['socio'] = socio!.toJson();
    return data;
  }
}
