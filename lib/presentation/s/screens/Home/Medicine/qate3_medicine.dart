import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Medicine extends StatelessWidget {
  const Qate3Medicine({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 10;
      },
      barTitle: ' منتجات الأدوية المقاطعة',
      imagePath1: 'assets/Medicine/Qate3/1.jpg',
      imagePath2: 'assets/Medicine/Qate3/2.jpg',
      imagePath3: 'assets/Medicine/Qate3/3.jpg',
      imagePath4: 'assets/Medicine/Qate3/4.jpg',
      imagePath5: 'assets/Medicine/Qate3/5.jpg',
      imagePath6: 'assets/Medicine/Qate3/6.jpg',
      imagePath7: 'assets/Medicine/Qate3/7.jpg',
      imagePath8: 'assets/Medicine/Qate3/8.jpg',
      imagePath9: 'assets/Medicine/Qate3/9.jpg',
      imagePath10: 'assets/Medicine/Qate3/10.jpg',
      title1: 'sudocrem ',
      title2: 'teva',
      title3: 'MERCK',
      title4: 'gsk ',
      title5: ' Roche',
      title6: 'SANOFI ',
      title7: ' Abbott ',
      title8: 'Pfizer',
      title9: 'Rexall',
      title10: 'BAYER',
    );
  }
}
