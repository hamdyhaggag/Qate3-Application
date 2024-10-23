import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

class Support {
  final String logoUrl;
  final String name;
  final SponsorType type;
  final String description;

  Support({
    required this.logoUrl,
    required this.name,
    required this.description,
    required this.type,
  });
}

enum SponsorType { premium, silver, bronze, basic }

class SupporterScreen extends StatelessWidget {
  final List<Support> sponsors = [
    Support(
      logoUrl: 'assets/home/62.png',
      name: 'محمد مصطفى الفهلوي',
      type: SponsorType.premium,
      description: 'داعم ذهبي',
    ),
    Support(
      logoUrl: 'assets/home/65.png',
      name: 'محمد اللقاني',
      type: SponsorType.premium,
      description: 'داعم ذهبي',
    ),
    Support(
      logoUrl: 'assets/home/67.png',
      name: 'أبو بكر',
      type: SponsorType.premium,
      description: 'داعم ذهبي',
    ),
    Support(
      logoUrl: 'assets/home/64.png',
      name: 'آيه حمادة',
      type: SponsorType.silver,
      description: 'داعم ذهبي',
    ),
    Support(
      logoUrl: 'assets/home/68.png',
      name: ' فرح خالد',
      type: SponsorType.premium,
      description: 'داعم ذهبي',
    ),
    Support(
      logoUrl: 'assets/home/63.png',
      name: 'إنجي السيد',
      type: SponsorType.silver,
      description: 'داعم متميز',
    ),
    Support(
      logoUrl: 'assets/home/66.png',
      name: ' فاطمة الزهراء أحمد',
      type: SponsorType.bronze,
      description: 'داعم رئيسي',
    ),
  ];

  SupporterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CustomAppBar(title: 'أبرز الداعمون للتطبيق', isHome: false),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
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
  final Support sponsor;

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
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Card(
        elevation: 6,
        margin: const EdgeInsets.symmetric(vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  sponsor.logoUrl,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sponsor.name,
                      style: const TextStyle(
                        fontSize: 12,
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
                  ],
                ),
              ),
              buildStars(sponsor.type),
            ],
          ),
        ),
      ),
    );
  }
}
