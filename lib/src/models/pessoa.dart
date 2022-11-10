import 'endereco.dart';

abstract class Pessoa {
  late int? id;
  late Type type;
  late Endereco? endereco;

  Pessoa(this.id, this.type, this.endereco);

  Pessoa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    endereco = json['endereco'];
  }

  toJson() {}
}

enum Type { fisica, juridica }
