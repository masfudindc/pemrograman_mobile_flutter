import 'package:flutter/material.dart';
import 'package:pemrograman_mobile_flutter/bab2-basic-flutter/sub-bab2.7-praktikum-ui-sederhana/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tugas Pertama Flutter'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'BERITA TERBARU'),
              Tab(text: 'PERTANDINGAN HARI INI'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            News(),
            Center(child: Text('Pertandingan Hari Ini')),
          ],
        ),
      ),
    );
  }
}

