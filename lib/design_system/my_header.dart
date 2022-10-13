import 'package:flutter/material.dart';
import 'package:sistemadecadastro/design_system/my_images.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          logo,
          height: 58,
        ),
        Text(
          'Cadastro de Empresas',
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
