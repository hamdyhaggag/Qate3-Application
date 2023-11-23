import 'package:flutter/material.dart';
import 'package:qate3_app/constants/qate3_model.dart';

class Qate3Water extends StatelessWidget {
  const Qate3Water({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات المياة المقاطعة',
      imagePath1: 'assets/Drinks/Qate3/w1.jpg',
      imagePath2: 'assets/Drinks/Qate3/w2.jpg',
      imagePath3: 'assets/Drinks/Qate3/w3.jpg',
      imagePath4: 'assets/Drinks/Qate3/w4.jpg',
      imagePath5: 'assets/Drinks/Qate3/w5.jpg',
      title1: 'بركة',
      title2: ' أكوافينا',
      title3: 'إيفيان ',
      title4: 'بيور لايف',
      title5: ' دساني',
    );
  }
}
