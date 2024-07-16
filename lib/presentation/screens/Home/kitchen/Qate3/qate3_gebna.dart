import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Gebna extends StatelessWidget {
  const Qate3Gebna({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 7;
      },
      barTitle: ' منتجات الجبن المقاطعة',
      imagePath1: 'assets/kitchen/Qate3/g1.png',
      imagePath2: 'assets/kitchen/Qate3/g2.png',
      imagePath3: 'assets/kitchen/Qate3/g3.png',
      imagePath4: 'assets/kitchen/Qate3/g4.png',
      imagePath5: 'assets/kitchen/Qate3/g5.png',
      imagePath6: 'assets/kitchen/Qate3/g6.png',
      imagePath7: 'assets/kitchen/Qate3/g7.png',
      title1: 'لافاشكري',
      title2: ' كيري',
      title3: 'أبو الولد ',
      title4: ' بريزيدن',
      title5: ' فيلادلفيا',
      title6: ' كرافت',
      title7: ' طعمه',
    );
  }
}
