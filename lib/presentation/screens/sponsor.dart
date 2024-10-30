import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class Sponsor {
  final String logoUrl;
  final String name;
  final String description;
  final SponsorType type;
  final String url;

  Sponsor({
    required this.logoUrl,
    required this.name,
    required this.description,
    required this.type,
    required this.url,
  });
}

enum SponsorType { premium, silver, bronze, basic }

class SponsorsScreen extends StatelessWidget {
  final List<Sponsor> sponsors = [
    Sponsor(
      logoUrl: 'assets/home/75.png',
      name: 'شريك متميز ',
      description:
          'جبنة دومتي، نكهة فريدة وجودة لا تُضاهى، تجعل كل وجبة لحظة مميزة. استمتع بمذاقها الرائع واصنع ذكريات لا تُنسى!',
      type: SponsorType.premium,
      url: 'https://www.facebook.com/DomtyDairy?mibextid=ZbWKwL',
    ),
    Sponsor(
      logoUrl: 'assets/home/76.png',
      name: 'شريك متميز ',
      description:
          'شيبسي تايجر ، قرمشة بطعم جريء يزودك بالطاقة والمتعة في كل لحظة. خليك جاهز للتحدي مع طعم ما يتنساش!',
      type: SponsorType.premium,
      url: 'https://www.facebook.com/TigerChips?mibextid=ZbWKwL',
    ),
    Sponsor(
      logoUrl: 'assets/Drinks/Bring/c6.png',
      name: 'شريك متميز ',
      description:
          'نقدم أجود منتجات القهوة والنسكافيه، عشان كل فنجان يكون له طعم مميز وذكريات حلوة.',
      type: SponsorType.premium,
      url: 'https://www.facebook.com/getkafeta?mibextid=ZbWKwL',
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
                onPressed: () async {
                  final Uri url = Uri.parse(sponsor.url);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(
                      url,
                      mode: LaunchMode
                          .inAppWebView, // Opens the link in an in-app WebView
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
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
