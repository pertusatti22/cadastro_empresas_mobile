import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sistemadecadastro/src/models/endereco_model.dart';

import '../models/socio_model.dart';

class Database {
  String? id;
  String? createdAd;
  String? cnpj;
  String? razaoSocial;
  String? nomeFantasia;
  String? telefone;
  EnderecoModel? enderecoModel;
  SocioModel? socioModel;

  Database(
      {this.id,
      this.createdAd,
      this.cnpj,
      this.razaoSocial,
      this.nomeFantasia,
      this.telefone,
      this.enderecoModel,
      this.socioModel});

  Future<List<Database>> listMock() async {
    final mockdata = await rootBundle.loadString('assets/database/mock.json');
    final list = json.decode(mockdata) as List<dynamic>;
    return list.map((e) => Database.fromJson(e)).toList();
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
    data['createdAd'] = createdAd;
    data['cnpj'] = cnpj;
    data['razaoSocial'] = razaoSocial;
    data['nomeFantasia'] = nomeFantasia;
    data['telefone'] = telefone;
    if (enderecoModel != null) {
      data['endereco'] = enderecoModel!.toJson();
    }
    if (socioModel != null) {
      data['socio'] = socioModel!.toJson();
    }
    return data;
  }
}
