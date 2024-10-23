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
      name: 'محمد الفهلوي',
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
      name: 'فرح خالد',
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
      name: 'فاطمة الزهراء أحمد',
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView.builder(
            itemCount: sponsors.length + 1,
            itemBuilder: (context, index) {
              if (index < sponsors.length) {
                return SponsorCard(sponsor: sponsors[index]);
              } else {
                return Align(
                  alignment: Alignment.center,
                  child: FractionallySizedBox(
                    widthFactor: 0.99,
                    child: Card(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.black12.withOpacity(0.1)
                          : Colors.white,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'هل تودّ أن تكون من الداعمين؟',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width > 600
                                        ? 22
                                        : 20,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'انضم إلينا وكن جزءاً من فريقنا الداعم كل مساهمة تُحدث فرقاً!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface
                                    .withOpacity(0.7),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SupporterScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 24.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.0), // Rounded button
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'ادعم التطبيق الآن',
                                  style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
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
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: double.infinity,
      height: screenWidth * 0.26,
      child: Card(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.black12.withOpacity(0.1)
            : Colors.white,
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                  height: screenWidth * 0.13,
                  width: screenWidth * 0.13,
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
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      sponsor.description,
                      style: TextStyle(
                        fontSize: screenWidth * 0.032,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.w600,
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
