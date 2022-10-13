import 'package:flutter/material.dart';

import 'my_color.dart';

class MyButton extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String label;
  final MyColor myColor;

  MyButton({Key? key, required this.label, required this.myColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = myColor as Color;

    return ElevatedButton(
        onPressed: () {
          _formKey.currentState?.validate();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          textStyle: Theme.of(context).textTheme.subtitle1,
          elevation: 10,
        ),
        child: Text(label));
  }
}
