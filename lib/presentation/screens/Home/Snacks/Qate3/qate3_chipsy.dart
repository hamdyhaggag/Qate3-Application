import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Chipsy extends StatelessWidget {
  const Qate3Chipsy({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 12;
      },
      barTitle: ' منتجات الشيبسي المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/chi1.png',
      imagePath2: 'assets/Snacks/Qate3/chi2.png',
      imagePath3: 'assets/Snacks/Qate3/chi3.png',
      imagePath4: 'assets/Snacks/Qate3/chi4.png',
      imagePath5: 'assets/Snacks/Qate3/chi6.png',
      imagePath6: 'assets/Snacks/Qate3/chi7.png',
      imagePath7: 'assets/Snacks/Qate3/chi8.png',
      imagePath8: 'assets/Snacks/Qate3/chi9.png',
      imagePath9: 'assets/Snacks/Qate3/chi10.png',
      imagePath10: 'assets/Snacks/Qate3/chi11.png',
      imagePath11: 'assets/Snacks/Qate3/chi12.png',
      imagePath12: 'assets/Snacks/Qate3/chi13.png',
      title1: 'برينجلز',
      title2: 'شيتوس',
      title3: 'ليز',
      title4: 'فورنو',
      title5: 'بريك',
      title6: 'لايون',
      title7: 'صن بايتس',
      title8: 'ويندوز',
      title9: 'كرانشي',
      title10: 'دوريتوس',
      title11: 'شيبسي',
      title12: 'بيك رولز',
    );
  }
}
