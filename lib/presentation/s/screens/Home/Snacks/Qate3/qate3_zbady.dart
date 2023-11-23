import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Zbady extends StatelessWidget {
  const Qate3Zbady({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات الزبادي المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/z1.jpg',
      imagePath2: 'assets/Snacks/Qate3/z2.jpg',
      imagePath3: 'assets/Snacks/Qate3/z3.jpg',
      imagePath4: 'assets/Snacks/Qate3/z4.jpg',
      imagePath5: 'assets/Snacks/Qate3/z5.jpg',
      title1: 'نستله',
      title2: ' دانون',
      title3: ' لاكتيل',
      title4: '  أكتيفيا',
      title5: '  دانيت',
    );
  }
}
