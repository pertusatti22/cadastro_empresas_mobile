class EnderecoModel {
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String estado;
  String cep;

  EnderecoModel(
      {required this.logradouro,
      required this.numero,
      required this.complemento,
      required this.bairro,
      required this.estado,
      required this.cep});

  String? showEndereco() {
    return 'Endereço: $logradouro, $numero, $complemento, $bairro/$estado, $cep';
  }
}
