import 'package:cadastro_empresas_mobile/src/models/endereco.dart';
import 'package:cadastro_empresas_mobile/src/models/socio.dart';

class Empresa {
  final _id = Uuid().v1();
  final DateTime _createdAt = DateTime.now();

  String? razaoSocial = "";
  String? nomeFantasia = "";
  final String cnpj;
  Endereco? endereco;
  String? telefone = "";
  Socio? socio;

  Empresa(this.cnpj,
      {this.razaoSocial,
      this.nomeFantasia,
      this.endereco,
      this.telefone,
      this.socio});

  String get formattedCnpj {
    if (cnpj.length == 14) {
      final formatted =
          "${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12, 14)}.";
      return formatted;
    } else {
      return "Documento Inválido";
    }
  }

  String get formattedFone {
    if (telefone!.length == 11) {
      final formatted =
          "(${telefone!.substring(0, 2)}) ${telefone!.substring(2, 7)}-${telefone!.substring(7)}";
      return formatted;
    } else {
      return "Telefone Inválido";
    }
  }

  String get id => _id;
  DateTime get createdAt => _createdAt;
}
