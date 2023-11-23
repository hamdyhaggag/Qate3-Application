import 'package:flutter/material.dart';
import '../../../../../../constants/bring_model.dart';

class BringWater extends StatelessWidget {
  const BringWater({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 9;
      },
      barTitle: ' منتجات المياة البديلة',
      imagePath1: 'assets/Drinks/Bring/w1.jpg',
      imagePath2: 'assets/Drinks/Bring/w2.jpg',
      imagePath3: 'assets/Drinks/Bring/w3.jpg',
      imagePath4: 'assets/Drinks/Bring/w4.jpg',
      imagePath5: 'assets/Drinks/Bring/w5.jpg',
      imagePath6: 'assets/Drinks/Bring/w6.jpg',
      imagePath7: 'assets/Drinks/Bring/w7.jpg',
      imagePath8: 'assets/Drinks/Bring/w8.jpg',
      imagePath9: 'assets/Drinks/Bring/w9.jpg',
      title1: 'إيلانو',
      title2: ' أكوا دلتا',
      title3: 'بوفانا',
      title4: 'آبار',
      title5: ' لافي',
      title6: 'إيزيس ',
      title7: ' سيوة',
      title8: 'صافي',
      title9: 'حياة',
    );
  }
}
