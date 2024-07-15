import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Nescafe extends StatelessWidget {
  const Qate3Nescafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات النسكافية المقاطعة',
      imagePath1: 'assets/Drinks/Qate3/n1.jpg',
      imagePath2: 'assets/Drinks/Qate3/n2.jpg',
      imagePath3: 'assets/Drinks/Qate3/n3.jpg',
      imagePath4: 'assets/Drinks/Qate3/n4.jpg',
      imagePath5: 'assets/Drinks/Qate3/n5.jpg',
      title1: 'نسكافية',
      title2: ' جراندوس',
      title3: 'كوفي مييت  ',
      title4: ' ستاربكس أمريكانو',
      title5: ' كوفي ميكس ',
    );
  }
}
