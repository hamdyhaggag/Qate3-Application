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
      imagePath1: 'assets/kitchen/Qate3/c1.jpg',
      imagePath2: 'assets/kitchen/Qate3/c2.jpg',
      imagePath3: 'assets/kitchen/Qate3/c3.jpg',
      imagePath4: 'assets/kitchen/Qate3/c4.jpg',
      title1: 'شوكابك',
      title2: ' نيسكويك ',
      title3: 'جولد كورن ',
      title4: ' كانتري',
    );
  }
}
