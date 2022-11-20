import 'package:cadastro_empresas_mobile/src/models/socio.dart';

class SocioPJ extends Socio {
  String razaoSocial;
  String nomeFantasia;
  String cnpj;

  SocioPJ({
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.cnpj,
    required super.endereco,
  }) : super(cnpj, name: razaoSocial);
}
