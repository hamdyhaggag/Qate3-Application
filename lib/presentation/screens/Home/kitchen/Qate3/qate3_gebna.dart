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
      imagePath1: 'assets/kitchen/Qate3/g1.jpg',
      imagePath2: 'assets/kitchen/Qate3/g2.jpg',
      imagePath3: 'assets/kitchen/Qate3/g3.jpg',
      imagePath4: 'assets/kitchen/Qate3/g4.jpg',
      imagePath5: 'assets/kitchen/Qate3/g5.jpg',
      imagePath6: 'assets/kitchen/Qate3/g6.jpg',
      imagePath7: 'assets/kitchen/Qate3/g7.jpg',
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
