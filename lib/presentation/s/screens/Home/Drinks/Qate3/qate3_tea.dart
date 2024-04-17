import 'package:flutter/cupertino.dart';
import '../../../../../../constants/qate3_model.dart';

class Qate3Tea extends StatelessWidget {
  const Qate3Tea({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 3;
      },
      barTitle: ' منتجات الشاي المقاطعة',
      imagePath1: 'assets/Drinks/Qate3/t1.jpg',
      imagePath2: 'assets/Drinks/Qate3/t2.jpg',
      imagePath3: 'assets/Drinks/Qate3/t3.jpg',
      title1: ' ليبتون',
      title2: 'أحمد تي',
      title3: ' تويننجز',
    );
  }
}
