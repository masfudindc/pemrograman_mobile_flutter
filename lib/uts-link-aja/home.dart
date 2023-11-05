import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pemrograman_mobile_flutter/uts-link-aja/widgets/custom_chip.dart';
import 'package:pemrograman_mobile_flutter/uts-link-aja/widgets/rounded_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(bottom: 16),
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TopBanner(),
              MainRowMenu(),
              MenuGrid(),
              ImageCarousel(),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        enlargeFactor: 0.2,
      ),
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color:
                    Color.fromARGB(255, 255 - i * 15, 70 + i * 15, 70 + i * 15),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Text(''),
            );
          },
        );
      }).toList(),
    );
  }
}

class MenuGrid extends StatelessWidget {
  const MenuGrid({
    super.key,
  });
  static const List<Map<String, IconData>> menuList = [
    {'Pulsa/Data': FontAwesomeIcons.phone},
    {'Electricity': FontAwesomeIcons.lightbulb},
    {'BPJS': FontAwesomeIcons.hospital},
    {'Internet': FontAwesomeIcons.wifi},
    {'PDAM': FontAwesomeIcons.water},
    {'TV Kabel': FontAwesomeIcons.tv},
    {'E-Money': FontAwesomeIcons.wallet},
    {'Lainnya': FontAwesomeIcons.ellipsis},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: menuList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 24,
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          return CustomChip(
            icon: menuList[index].values.first,
            label: menuList[index].keys.first,
            backgroundColor: Colors.transparent,
            spacing: 16,
            iconSize: 32,
          );
        },
      ),
    );
  }
}

class MainRowMenu extends StatelessWidget {
  const MainRowMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxHeight: 200),
      margin: const EdgeInsets.all(16),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 4,
          )
        ],
      ),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          CustomChip(
            icon: Icons.payment_outlined,
            label: 'TopUp',
          ),
          CustomChip(
            icon: Icons.phone_android,
            label: 'Send Money',
          ),
          CustomChip(
            icon: FontAwesomeIcons.ticket,
            label: 'Ticket Code',
          ),
          CustomChip(
            icon: FontAwesomeIcons.borderAll,
            label: 'See All',
          ),
        ],
      ),
    );
  }
}

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/city-skyline.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIcon(
                backgroundColor: Colors.red,
                child: Text(
                  'Link Aja!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  RoundedIcon(
                    backgroundColor: Colors.white,
                    child: FaIcon(FontAwesomeIcons.percent),
                  ),
                  SizedBox(width: 16),
                  RoundedIcon(
                    backgroundColor: Colors.white,
                    child: FaIcon(FontAwesomeIcons.heart),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.red,
                  Colors.red[900]!,
                ],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, SOFTYAN NOOR ARIEF, S.ST, M.KOM',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      BannerWithBalance(
                        'Saldo',
                        10.184,
                        flex: 10,
                      ),
                      Spacer(),
                      BannerWithBalance(
                        'Bonus Balance',
                        0,
                        flex: 10,
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Row()
        ],
      ),
    );
  }
}

class BannerWithBalance extends StatelessWidget {
  const BannerWithBalance(this.title, this.balance, {this.flex = 1, super.key});
  final String title;
  final double balance;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Row(
              children: [
                Text(
                  'Rp. $balance',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}