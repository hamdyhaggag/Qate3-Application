import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Coffee extends StatelessWidget {
  const Qate3Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 1;
      },
      barTitle: ' منتجات القهوة المقاطعة',
      imagePath1: 'assets/Drinks/Qate3/c1.jpg',
      title1: ' قهوة سريعة الذوبان',
    );
  }
}
