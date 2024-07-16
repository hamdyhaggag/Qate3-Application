import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Bounce extends StatelessWidget {
  const Qate3Bounce({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: ' المنتجات الإضافية المقاطعة',
      imagePath1: 'assets/kitchen/Qate3/bou1.png',
      imagePath2: 'assets/kitchen/Qate3/bou2.png',
      imagePath3: 'assets/kitchen/Qate3/bou3.png',
      imagePath4: 'assets/kitchen/Qate3/bou4.png',
      title1: 'كاتشب هاينز',
      title2: ' مايونيز هيلمانز ',
      title3: 'بسكويت سبريد ',
      title4: 'مربى فيتراك ',
    );
  }
}
