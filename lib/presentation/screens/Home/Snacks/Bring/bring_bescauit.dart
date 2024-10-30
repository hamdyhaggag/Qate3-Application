import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringBescauit extends StatelessWidget {
  const BringBescauit({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 9;
      },
      barTitle: 'منتجات البسكويت البديلة',
      imagePath1: 'assets/Snacks/Bring/b1.png',
      imagePath2: 'assets/Snacks/Bring/b3.png',
      imagePath3: 'assets/Snacks/Bring/b2.png',
      imagePath4: 'assets/Snacks/Bring/b4.png',
      imagePath5: 'assets/Snacks/Bring/b5.png',
      imagePath6: 'assets/Snacks/Bring/b6.png',
      imagePath7: 'assets/Snacks/Bring/b7.png',
      imagePath8: 'assets/Snacks/Bring/b8.png',
      imagePath9: 'assets/Snacks/Bring/b9.png',
      title1: ' دروو',
      title2: 'بسكاتو شاتو',
      title3: 'الشمعدان',
      title4: ' نواعم',
      title5: 'أولكر',
      title6: 'دومتي ساندوتش',
      isCertified6: true,
      title7: 'سوفت كرواسون',
      title8: 'برانش كرواسون',
      title9: 'ماجيك',
    );
  }
}
