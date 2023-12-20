import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key, required this.picture}) : super(key: key);

  final XFile picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview Page')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Expanded(child: Image.file(File(picture.path), fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(picture.name),
          )
        ]),
      ),
    );
  }
}