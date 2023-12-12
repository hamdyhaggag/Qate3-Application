import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringBescauit extends StatelessWidget {
  const BringBescauit({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 8;
      },
      barTitle: 'منتجات البسكويت البديلة',
      imagePath1: 'assets/Snacks/Bring/b1.jpg',
      imagePath2: 'assets/Snacks/Bring/b3.jpg',
      imagePath3: 'assets/Snacks/Bring/b2.jpg',
      imagePath4: 'assets/Snacks/Bring/b4.jpg',
      imagePath5: 'assets/Snacks/Bring/b5.jpg',
      imagePath6: 'assets/Snacks/Bring/b6.jpg',
      imagePath7: 'assets/Snacks/Bring/b7.jpg',
      imagePath8: 'assets/Snacks/Bring/b8.jpg',
      title1: ' دروو',
      title2: 'بسكاتو شاتو',
      title3: 'الشمعدان',
      title4: ' نواعم',
      title5: 'أولكر',
      title6: 'دومتي ساندوتش',
      title7: 'سوفت كرواسون',
      title8: 'برانش كرواسون',
    );
  }
}
