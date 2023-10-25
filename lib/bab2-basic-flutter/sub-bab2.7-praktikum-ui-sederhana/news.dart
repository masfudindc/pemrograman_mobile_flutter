import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt07d62336ee8ed926/6214ab2690aa357658b8e4cc/18-maguire.jpg?auto=webp&format=pjpg&width=3840&quality=60',
          alignment: Alignment.topCenter,
        ),
        Text(
          'Harry Maguire enggan pindah dari MU',
          textAlign: TextAlign.center,
          style: GoogleFonts.gothicA1(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 179, 0, 202),
          width: double.infinity,
          margin: const EdgeInsets.only(top: 8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Jendela Transfer',
              style: GoogleFonts.gothicA1(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              const itemImage =
                  'https://asset-2.tstatic.net/jambi/foto/bank/images/Sadio-Mane-gabung-Al-Nassr-FC-29072023.jpg';
              const itemTitle = 'Sadio Mane Gabung Al-Nassr FC !! Here We Go';
              const itemDate = '20-08-2023';

              return ListTile(
                leading: Image.network(itemImage),
                title: const Text(itemTitle),
                subtitle: const Text(itemDate),
              );
            },
          ),
        ),
      ],
    );
  }
}