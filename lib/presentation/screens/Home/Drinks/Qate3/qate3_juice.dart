import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Juice extends StatelessWidget {
  const Qate3Juice({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات العصير المقاطعة',
      imagePath1: 'assets/Drinks/Qate3/j1.png',
      imagePath2: 'assets/Drinks/Qate3/j2.png',
      imagePath3: 'assets/Drinks/Qate3/j3.png',
      imagePath4: 'assets/Drinks/Qate3/j4.png',
      imagePath5: 'assets/Drinks/Qate3/j5.png',
      title1: ' راني',
      title2: ' بيتي',
      title3: ' تانج',
      title4: ' كل يوم',
      title5: ' هب',
    );
  }
}
