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
      imagePath1: 'assets/kitchen/Qate3/bou1.jpg',
      imagePath2: 'assets/kitchen/Qate3/bou2.jpg',
      imagePath3: 'assets/kitchen/Qate3/bou3.jpg',
      imagePath4: 'assets/kitchen/Qate3/bou4.jpg',
      title1: 'كاتشب هاينز',
      title2: ' مايونيز هيلمانز ',
      title3: 'بسكويت سبريد ',
      title4: 'مربى فيتراك ',
    );
  }
}
