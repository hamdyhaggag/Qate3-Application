import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringIndomi extends StatelessWidget {
  const BringIndomi({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 3;
      },
      barTitle: 'منتجات الإندومي البديلة',
      imagePath1: 'assets/Snacks/Bring/ind1.jpg',
      imagePath2: 'assets/Snacks/Bring/ind2.jpg',
      imagePath3: 'assets/Snacks/Bring/ind3.jpg',
      title1: 'إندومي',
      title2: 'سوبرمي',
      title3: 'مكرونيلا',
    );
  }
}
