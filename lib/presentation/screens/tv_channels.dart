import 'package:flutter/material.dart';
import 'package:qate3_app/constants/qate3_model.dart';

class TvChannels extends StatelessWidget {
  const TvChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' مقاطعة القنوات و البرامج',
      imagePath1: 'assets/home/56.png',
      imagePath2: 'assets/home/57.png',
      imagePath3: 'assets/home/58.png',
      imagePath4: 'assets/home/59.png',
      imagePath5: 'assets/home/60.png',
      title1: 'قنوات MBC',
      title2: 'قناة العربية',
      title3: 'قناة سكاي نيوز',
      title4: 'قناة الحدث',
      title5: ' شاهد',
    );
  }
}
