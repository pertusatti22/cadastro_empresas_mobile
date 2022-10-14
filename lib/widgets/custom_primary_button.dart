import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String label;

  const CustomPrimaryButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(label));
  }
}
