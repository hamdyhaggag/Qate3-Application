import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Bescauit extends StatelessWidget {
  const Qate3Bescauit({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 15;
      },
      barTitle: ' منتجات البسكويت المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/b1.jpg',
      imagePath2: 'assets/Snacks/Qate3/b2.jpg',
      imagePath3: 'assets/Snacks/Qate3/b3.jpg',
      imagePath4: 'assets/Snacks/Qate3/b4.jpg',
      imagePath5: 'assets/Snacks/Qate3/b5.jpg',
      imagePath6: 'assets/Snacks/Qate3/b6.jpg',
      imagePath7: 'assets/Snacks/Qate3/b7.jpg',
      imagePath8: 'assets/Snacks/Qate3/b8.jpg',
      imagePath9: 'assets/Snacks/Qate3/b9.jpg',
      imagePath10: 'assets/Snacks/Qate3/b10.jpg',
      imagePath11: 'assets/Snacks/Qate3/b11.jpg',
      imagePath12: 'assets/Snacks/Qate3/b12.jpg',
      imagePath13: 'assets/Snacks/Qate3/b13.jpg',
      imagePath14: 'assets/Snacks/Qate3/b14.jpg',
      imagePath15: 'assets/Snacks/Qate3/b15.jpg',
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
    );
  }
}
