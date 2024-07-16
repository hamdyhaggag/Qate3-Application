import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Bescauit extends StatelessWidget {
  const Qate3Bescauit({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 16;
      },
      barTitle: ' منتجات البسكويت المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/b1.png',
      imagePath2: 'assets/Snacks/Qate3/b2.png',
      imagePath3: 'assets/Snacks/Qate3/b3.png',
      imagePath4: 'assets/Snacks/Qate3/b4.png',
      imagePath5: 'assets/Snacks/Qate3/b5.png',
      imagePath6: 'assets/Snacks/Qate3/b6.png',
      imagePath7: 'assets/Snacks/Qate3/b7.png',
      imagePath8: 'assets/Snacks/Qate3/b8.png',
      imagePath9: 'assets/Snacks/Qate3/b9.png',
      imagePath10: 'assets/Snacks/Qate3/b10.png',
      imagePath11: 'assets/Snacks/Qate3/b11.png',
      imagePath12: 'assets/Snacks/Qate3/b12.png',
      imagePath13: 'assets/Snacks/Qate3/b13.png',
      imagePath14: 'assets/Snacks/Qate3/b14.png',
      imagePath15: 'assets/Snacks/Qate3/b15.png',
      imagePath16: 'assets/Snacks/Qate3/b16.png',
      title1: 'ويفرز',
      title2: ' مولتو',
      title3: 'هوهوز',
      title4: ' توينكيز ',
      title5: 'أوريو',
      title6: 'أهلاوي',
      title7: 'تويكس',
      title8: 'باليستو',
      title9: 'تاك',
      title10: 'مانشو بيسك',
      title11: 'ماري',
      title12: 'نايس',
      title13: 'ماكس تي',
      title14: 'تودو',
      title15: 'مكفتيز',
      title16: 'سفن دايز',
    );
  }
}
