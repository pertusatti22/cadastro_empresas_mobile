import 'package:cadastro_empresas_mobile/src/models/socio.dart';

class SocioPF extends Socio {
  String cpf;

  SocioPF({required super.name, required this.cpf, required super.endereco})
      : super(cpf);
}
