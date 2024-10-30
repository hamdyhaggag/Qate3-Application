import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

class Sponsor {
  final String logoUrl;
  final String name;
  final String description;
  final SponsorType type;

  Sponsor({
    required this.logoUrl,
    required this.name,
    required this.description,
    required this.type,
  });
}

enum SponsorType { premium, silver, bronze, basic }

class SponsorsScreen extends StatelessWidget {
  final List<Sponsor> sponsors = [
    Sponsor(
      logoUrl: 'assets/Drinks/Bring/c6.png',
      name: 'شريك متميز ',
      description:
          'نقدم أجود منتجات القهوة والنسكافيه، عشان كل فنجان يكون له طعم مميز وذكريات حلوة.',
      type: SponsorType.premium,
    ),
    Sponsor(
      logoUrl: 'assets/Drinks/Bring/s7.png',
      name: 'شريك فضي ',
      description:
          'نقدم أجود منتجات القهوة والنسكافيه، عشان كل فنجان يكون له طعم مميز وذكريات حلوة.',
      type: SponsorType.silver,
    ),
    Sponsor(
      logoUrl: 'assets/Drinks/Bring/s8.png',
      name: 'شريك برونزي ',
      description:
          'نقدم أجود منتجات القهوة والنسكافيه، عشان كل فنجان يكون له طعم مميز وذكريات حلوة.',
      type: SponsorType.bronze,
    ),

  ];

  SponsorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CustomAppBar(title: 'شركاء قاطع', isHome: false),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 18.0),
          child: ListView.builder(
            itemCount: sponsors.length,
            itemBuilder: (context, index) {
              return SponsorCard(sponsor: sponsors[index]);
            },
          ),
        ),
      ),
    );
  }
}

class SponsorCard extends StatelessWidget {
  final Sponsor sponsor;

  const SponsorCard({Key? key, required this.sponsor}) : super(key: key);

  Widget buildStars(SponsorType type) {
    int starCount;
    switch (type) {
      case SponsorType.premium:
        starCount = 5;
        break;
      case SponsorType.silver:
        starCount = 4;
        break;
      case SponsorType.bronze:
        starCount = 3;
        break;
      default:
        starCount = 2;
    }

    return Row(
      children: List.generate(
        starCount,
        (index) => const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    sponsor.logoUrl,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sponsor.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        sponsor.description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 8),

                      buildStars(sponsor.type),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton.icon(
                onPressed: () {

                },
                icon: const Icon(Icons.info),
                label: const Text('أعرف المزيد'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
