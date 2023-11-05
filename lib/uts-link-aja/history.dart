import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          title: const Center(
            child: Text('Transaction History'),
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Done',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabView(
              text: 'All transaction is completed!',
              subText: 'Any pending transaction will appear in this page',
            ),
            TabView(text: 'Done'),
          ],
        ),
      ),
    );
  }
}

class TabView extends StatelessWidget {
  final String text;
  final String? subText;

  const TabView({super.key, required this.text, this.subText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/done-status.png',
            scale: 8,
          ),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          if (subText != null) const SizedBox(height: 8),
          Text(subText ?? ''),
        ],
      ),
    );
  }
}