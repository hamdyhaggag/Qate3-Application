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
      imagePath1: 'assets/Drinks/Qate3/n1.png',
      imagePath2: 'assets/Drinks/Qate3/n2.png',
      imagePath3: 'assets/Drinks/Qate3/n3.png',
      imagePath4: 'assets/Drinks/Qate3/n4.png',
      imagePath5: 'assets/Drinks/Qate3/n5.png',
      title1: 'نسكافية',
      title2: ' جراندوس',
      title3: 'كوفي مييت  ',
      title4: ' ستاربكس أمريكانو',
      title5: ' كوفي ميكس ',
    );
  }
}
