// input_section.dart
import 'package:flutter/material.dart';

class InputSection extends StatelessWidget {
  final TextEditingController controller;

  const InputSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(
            labelText: 'Masukkan Suhu (Celsius)',
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
