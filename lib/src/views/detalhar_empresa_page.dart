import 'package:flutter/material.dart';
import 'package:sistemadecadastro/widgets/custom_app_bar.dart';

class DetalharEmpresaPage extends StatefulWidget {
  const DetalharEmpresaPage({Key? key}) : super(key: key);

  @override
  State<DetalharEmpresaPage> createState() => _DetalharEmpresaPageState();
}

class _DetalharEmpresaPageState extends State<DetalharEmpresaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'Detalhar Empresa',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Dados da Empresa',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                TextFormField(
                  initialValue: '92.456.516/0001-63',
                  readOnly: true,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'CNPJ',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue: 'Arthur e Andreia Telas Ltda',
                  readOnly: true,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Razão Social',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue: 'Telas',
                  readOnly: true,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Nome Fantasia',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue: '(11) 9 9572-6906',
                  readOnly: true,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue:
                      'Rua Domingos Vendemiati, 154, Parque Recanto do Parrilho, Jundiaí/SP, 13.219-051',
                  readOnly: true,
                  keyboardType: TextInputType.multiline,
                  minLines: 2,
                  maxLines: null,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Dados do Sócio',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                TextFormField(
                  initialValue: '87.009.263/0001-40',
                  readOnly: true,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'CNPJ',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue: 'Loc. Auto',
                  readOnly: true,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Sócio',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue:
                      'Rua Ângelo Alberto Nesti, 639, Bussocaba, Osasco/SP, 06.053-060',
                  readOnly: true,
                  keyboardType: TextInputType.multiline,
                  minLines: 2,
                  maxLines: null,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                    labelStyle: Theme.of(context).textTheme.subtitle2,
                    border: const UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
