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
      imagePath1: 'assets/Snacks/Qate3/chi1.jpg',
      imagePath2: 'assets/Snacks/Qate3/chi2.jpg',
      imagePath3: 'assets/Snacks/Qate3/chi3.jpg',
      imagePath4: 'assets/Snacks/Qate3/chi4.jpg',
      imagePath5: 'assets/Snacks/Qate3/chi6.jpg',
      imagePath6: 'assets/Snacks/Qate3/chi7.jpg',
      imagePath7: 'assets/Snacks/Qate3/chi8.jpg',
      imagePath8: 'assets/Snacks/Qate3/chi9.jpg',
      imagePath9: 'assets/Snacks/Qate3/chi10.jpg',
      imagePath10: 'assets/Snacks/Qate3/chi11.jpg',
      imagePath11: 'assets/Snacks/Qate3/chi12.jpg',
      imagePath12: 'assets/Snacks/Qate3/chi13.jpg',
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
