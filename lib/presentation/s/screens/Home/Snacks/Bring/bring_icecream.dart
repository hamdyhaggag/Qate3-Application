import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringIcecream extends StatelessWidget {
  const BringIcecream({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: 'منتجات الأيس كريم البديلة',
      imagePath1: 'assets/Snacks/Bring/i1.jpg',
      imagePath2: 'assets/Snacks/Bring/i2.jpg',
      imagePath3: 'assets/Snacks/Bring/i3.jpg',
      imagePath4: 'assets/Snacks/Bring/i4.jpg',
      title1: ' فرايداي',
      title2: ' جيلاتو',
      title3: 'هيلثي',
      title4: ' جيلاتو هابينس',
    );
  }
}
