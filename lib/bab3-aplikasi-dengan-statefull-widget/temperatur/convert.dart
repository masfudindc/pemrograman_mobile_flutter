// button_section.dart
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  final VoidCallback onPressed;

  ButtonSection({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text('Konversi Suhu'),
      ),
    );
  }
}
