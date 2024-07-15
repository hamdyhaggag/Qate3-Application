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
      imagePath1: 'assets/Drinks/Qate3/j1.jpg',
      imagePath2: 'assets/Drinks/Qate3/j2.jpg',
      imagePath3: 'assets/Drinks/Qate3/j3.jpg',
      imagePath4: 'assets/Drinks/Qate3/j4.jpg',
      imagePath5: 'assets/Drinks/Qate3/j5.jpg',
      title1: ' راني',
      title2: ' بيتي',
      title3: ' تانج',
      title4: ' كل يوم',
      title5: ' هب',
    );
  }
}
