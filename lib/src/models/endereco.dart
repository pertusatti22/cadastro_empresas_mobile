class Endereco {
  int? id;
  String? logradouro;
  int? numero;
  String? complemento;
  String? bairro;
  String? cidade;
  String? estado;
  String? cep;

  Endereco([
    this.logradouro,
    this.numero,
    this.complemento,
    this.bairro,
    this.cidade,
    this.estado,
    this.cep,
  ]);

  String get formattedCep {
    return "${cep!.substring(0, 2)}.${cep!.substring(2, 5)}-${cep!.substring(5)}";
  }

  Endereco.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logradouro = json['logradouro'];
    numero = json['numero'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    estado = json['estado'];
    cep = json['cep'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['logradouro'] = logradouro;
    data['numero'] = numero;
    data['complemento'] = complemento;
    data['bairro'] = bairro;
    data['cidade'] = cidade;
    data['estado'] = estado;
    data['cep'] = cep;
    return data;
  }
}
