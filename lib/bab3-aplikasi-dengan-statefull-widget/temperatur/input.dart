// input_section.dart
import 'package:flutter/material.dart';

class InputSection extends StatelessWidget {
  final TextEditingController controller;

  InputSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            labelText: 'Masukkan Suhu (Celsius)',
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
