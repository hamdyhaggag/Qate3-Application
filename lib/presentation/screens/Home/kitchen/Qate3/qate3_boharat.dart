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
      imagePath1: 'assets/kitchen/Qate3/bo1.png',
      imagePath2: 'assets/kitchen/Qate3/bo2.png',
      imagePath3: 'assets/kitchen/Qate3/bo3.png',
      title1: 'كنور ',
      title2: ' ماجي  ',
      title3: 'فاين فودز  ',
    );
  }
}
