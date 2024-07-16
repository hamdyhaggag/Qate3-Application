import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3CornFlix extends StatelessWidget {
  const Qate3CornFlix({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: ' منتجات الكورن فليكس المقاطعة',
      imagePath1: 'assets/kitchen/Qate3/c1.png',
      imagePath2: 'assets/kitchen/Qate3/c2.png',
      imagePath3: 'assets/kitchen/Qate3/c3.png',
      imagePath4: 'assets/kitchen/Qate3/c4.png',
      title1: 'شوكابك',
      title2: ' نيسكويك ',
      title3: 'جولد كورن ',
      title4: ' كانتري',
    );
  }
}
