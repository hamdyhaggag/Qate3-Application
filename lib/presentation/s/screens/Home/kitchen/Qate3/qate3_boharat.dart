import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Boharat extends StatelessWidget {
  const Qate3Boharat({super.key});
  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 3;
      },
      barTitle: ' منتجات البهارات المقاطعة',
      imagePath1: 'assets/kitchen/Qate3/bo1.jpg',
      imagePath2: 'assets/kitchen/Qate3/bo2.jpg',
      imagePath3: 'assets/kitchen/Qate3/bo3.jpg',
      title1: 'كنوز ',
      title2: ' ماجي  ',
      title3: 'فاين فودز  ',
    );
  }
}
