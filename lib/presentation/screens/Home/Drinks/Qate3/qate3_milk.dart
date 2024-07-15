import 'package:flutter/cupertino.dart';
import '../../../../../../constants/qate3_model.dart';

class Qate3Milk extends StatelessWidget {
  const Qate3Milk({super.key});
  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات الألبان المقاطعة',
      imagePath1: 'assets/Drinks/Qate3/m1.jpg',
      imagePath2: 'assets/Drinks/Qate3/m2.jpg',
      imagePath3: 'assets/Drinks/Qate3/m3.jpg',
      imagePath4: 'assets/Drinks/Qate3/m4.jpg',
      imagePath5: 'assets/Drinks/Qate3/m5.jpg',
      title1: 'نيدو',
      title2: ' اس 26',
      title3: 'نانا ',
      title4: ' نستوجين',
      title5: ' المراعي',
    );
  }
}
