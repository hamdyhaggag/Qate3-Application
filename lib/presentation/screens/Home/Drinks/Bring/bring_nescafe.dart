import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringNescafe extends StatelessWidget {
  const BringNescafe({super.key});
  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 7;
      },
      barTitle: ' منتجات النسكافية البديلة',
      imagePath1: 'assets/Drinks/Bring/n1.jpg',
      imagePath2: 'assets/Drinks/Bring/n2.jpg',
      imagePath3: 'assets/Drinks/Bring/n3.jpg',
      imagePath4: 'assets/Drinks/Bring/n4.jpg',
      imagePath5: 'assets/Drinks/Bring/n5.jpg',
      imagePath6: 'assets/Drinks/Bring/n6.jpg',
      imagePath7: 'assets/Drinks/Bring/n7.jpg',
      title1: 'علي كافية',
      title2: ' رووتس ',
      title3: 'ناتشي',
      title4: ' كوفي بريك',
      title5: ' بارلي ',
      title6: 'مصر كافية ',
      title7: '  ميجا كافية',
    );
  }
}
