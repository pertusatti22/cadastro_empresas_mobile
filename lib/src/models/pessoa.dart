import 'endereco.dart';

abstract class Pessoa {
  late int? id;
  late Type type;
  late Endereco? endereco;

  Pessoa(this.id, this.type, this.endereco);

  toJson() {}
}

enum Type { fisica, juridica }
