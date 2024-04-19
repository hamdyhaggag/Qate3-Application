import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringIcecream extends StatelessWidget {
  const BringIcecream({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 7;
      },
      barTitle: 'منتجات الأيس كريم البديلة',
      imagePath1: 'assets/Snacks/Bring/i1.jpg',
      imagePath2: 'assets/Snacks/Bring/i2.jpg',
      imagePath3: 'assets/Snacks/Bring/i3.jpg',
      imagePath4: 'assets/Snacks/Bring/i4.jpg',
      imagePath5: 'assets/Snacks/Bring/i5.jpg',
      imagePath6: 'assets/Snacks/Bring/i6.jpg',
      imagePath7: 'assets/Snacks/Bring/i7.jpg',
      title1: ' فرايداي',
      title2: ' جيلاتو',
      title3: 'هيلثي',
      title4: ' جيلاتو هابينس',
      title5: 'جيرسي',
      title6: ' أند فل ',
      title7: ' ويمزي ',
    );
  }
}
