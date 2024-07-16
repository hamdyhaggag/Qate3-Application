import 'package:flutter/material.dart';
import '../../../../../../constants/bring_model.dart';

class BringWater extends StatelessWidget {
  const BringWater({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 11;
      },
      barTitle: ' منتجات المياة البديلة',
      imagePath1: 'assets/Drinks/Bring/w1.png',
      imagePath2: 'assets/Drinks/Bring/w2.png',
      imagePath3: 'assets/Drinks/Bring/w3.png',
      imagePath4: 'assets/Drinks/Bring/w4.png',
      imagePath5: 'assets/Drinks/Bring/w5.png',
      imagePath6: 'assets/Drinks/Bring/w6.png',
      imagePath7: 'assets/Drinks/Bring/w7.png',
      imagePath8: 'assets/Drinks/Bring/w8.png',
      imagePath9: 'assets/Drinks/Bring/w9.png',
      imagePath10: 'assets/Drinks/Bring/w10.png',
      imagePath11: 'assets/Drinks/Bring/w11.png',
      title1: 'إيلانو',
      title2: ' أكوا دلتا',
      title3: 'بوفانا',
      title4: 'آبار',
      title5: ' لافي',
      title6: 'إيزيس ',
      title7: ' سيوة',
      title8: 'صافي',
      title9: 'حياة',
      title10: 'إيفورا',
      title11: 'أوه',
    );
  }
}
