import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringZbady extends StatelessWidget {
  const BringZbady({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 2;
      },
      barTitle: ' منتجات الزبادي البديلة',
      imagePath1: 'assets/Snacks/Bring/z1.jpg',
      imagePath2: 'assets/Snacks/Bring/z2.jpg',
      title1: 'جهينة',
      title2: ' لبنيتا ',
    );
  }
}
