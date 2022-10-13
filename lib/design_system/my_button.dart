import 'package:flutter/material.dart';

import 'my_color.dart';

class MyButton extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String label;
  final bool inverted;

  MyButton({Key? key, required this.label, required this.inverted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _formKey.currentState?.validate();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: inverted ? Colors.white : MyColor.primary,
          foregroundColor: inverted ? MyColor.primary : Colors.white,
          textStyle: inverted
              ? Theme.of(context).textTheme.headline5
              : Theme.of(context).textTheme.headline4,
          elevation: 5,
        ),
        child: Text(label));
  }
}
