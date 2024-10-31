import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

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
          'جبنة دومتي، نكهة فريدة وجودة لا تُضاهى، تجعل كل وجبة لحظة مميزة، استمتع بمذاقها الرائع واصنع ذكريات لا تُنسى!',
      type: SponsorType.premium,
      url: 'https://www.facebook.com/DomtyDairy?mibextid=ZbWKwL',
    ),
    Sponsor(
      logoUrl: 'assets/home/76.png',
      name: 'شريك متميز ',
      description:
          'شيبسي تايجر ، قرمشة بطعم جريء يزودك بالطاقة والمتعة في كل لحظة، خليك جاهز للتحدي مع طعم ما يتنساش!',
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.black12.withOpacity(0.1)
          : Colors.white,
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    sponsor.logoUrl,
                    height: screenWidth * 0.25,
                    width: screenWidth * 0.25,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sponsor.name,
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        sponsor.description,
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      buildStars(sponsor.type),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton.icon(
                onPressed: () async {
                  final Uri url = Uri.parse(sponsor.url);
                  try {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const Center(child: CircularProgressIndicator());
                      },
                    );

                    if (await canLaunchUrl(url)) {
                      await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    } else {
                      debugPrint(
                          'Could not launch the URL. Please check your internet connection or try again later.');
                    }
                  } catch (e) {
                    debugPrint(
                        'An error occurred while trying to open the URL: $e');
                  } finally {
                    Navigator.of(context).pop();
                  }
                },
                icon: const Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                label: const Text('أعرف المزيد',
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.015,
                    horizontal: screenWidth * 0.04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
