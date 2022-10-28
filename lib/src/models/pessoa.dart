import 'endereco.dart';

abstract class Pessoa {
  Socio socio;
  Endereco endereco;

  Pessoa({required this.socio, required this.endereco});
}

enum Socio { fisica, juridica }
