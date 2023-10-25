import 'package:flutter/material.dart';
import 'news.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Berita Bwola',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Berita Bwola'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Berita Terbaru',
                ),
                Tab(
                  text: 'Pertandingan Hari Ini',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              News(),
              Center(
                child: Text(
                  'Konten Pertandingan Hari Ini',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}