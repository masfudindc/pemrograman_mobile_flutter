import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HightlightedCard(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  'https://source.unsplash.com/random/480x260/?football',
                  'Costa Mendekat Ke Palmeiras',
                  'Barcelona Feb 13, 2021',
                ),
                Card(
                  'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt0530b1f489ecf15e/63dd7d0a78294c28ffb25e64/GettyImages-1246771506.jpg?auto=webp&format=pjpg&width=3840&quality=60',
                  'Costa Mendekat Ke Palmeiras',
                  'Barcelona Feb 13, 2021',
                ),
                Card(
                  'https://source.unsplash.com/random/480x260/?football',
                  'Costa Mendekat Ke Palmeiras',
                  'Barcelona Feb 13, 2021',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  final String imagUrl;
  final String title;
  final String locationAndDate;
  const Card(this.imagUrl, this.title, this.locationAndDate, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network(
                imagUrl,
                height: 120,
                width: 160,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(title),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.blue,
              width: 1,
            )),
            child: Text(locationAndDate),
          ),
        ],
      ),
    );
  }
}

class HightlightedCard extends StatelessWidget {
  const HightlightedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple,
          width: 4,
        ),
      ),
      child: Column(
        children: [
          Image.network('https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt0530b1f489ecf15e/63dd7d0a78294c28ffb25e64/GettyImages-1246771506.jpg?auto=webp&format=pjpg&width=3840&quality=60'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Costa Mendekat Ke Palmeiras',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 48,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            color: Colors.purple,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Transfer',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}