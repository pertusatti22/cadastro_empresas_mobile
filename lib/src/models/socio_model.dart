import 'endereco_model.dart';

class SocioModel {
  String? tipoSocio;
  String? nome;
  String? cpf;
  EnderecoModel? enderecoModel;

  SocioModel({this.tipoSocio, this.nome, this.cpf, this.enderecoModel});

  SocioModel.fromJson(Map<String, dynamic> json) {
    tipoSocio = json['tipoSocio'];
    nome = json['nome'];
    cpf = json['cpf'];
    enderecoModel = json['endereco'] != null
        ? EnderecoModel.fromJson(json['endereco'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tipoSocio'] = tipoSocio;
    data['nome'] = nome;
    data['cpf'] = cpf;
    if (enderecoModel != null) {
      data['endereco'] = enderecoModel!.toJson();
    }
    return data;
  }
}
