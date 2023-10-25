import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Image(image: NetworkImage('https://flutter.github.io/assetsfor-api-docs/assets/widgets/owl.jpg')),
    );
  }
}