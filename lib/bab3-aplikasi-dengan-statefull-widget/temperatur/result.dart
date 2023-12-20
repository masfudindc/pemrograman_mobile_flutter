// result_section.dart
import 'package:flutter/material.dart';

class ResultSection extends StatelessWidget {
  final double kelvinResult;
  final double reamurResult;

  const ResultSection({super.key, required this.kelvinResult, required this.reamurResult});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Suhu dalam Kelvin:', style: TextStyle(fontSize: 18)),
              Text('Suhu dalam Reamur:', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('$kelvinResult', style: const TextStyle(fontSize: 40)),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text('$reamurResult', style: const TextStyle(fontSize: 40)),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
