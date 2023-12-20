// button_section.dart
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  final VoidCallback onPressed;

  const ButtonSection({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Text('Konversi Suhu'),
      ),
    );
  }
}
