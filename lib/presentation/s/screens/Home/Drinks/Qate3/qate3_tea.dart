import 'package:flutter/cupertino.dart';
import '../../../../../../constants/qate3_model.dart';

class Qate3Tea extends StatelessWidget {
  const Qate3Tea({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 2;
      },
      barTitle: ' منتجات الشاي المقاطعة',
      imagePath1: 'assets/home/14.jpg',
      imagePath2: 'assets/Drinks/Qate3/t2.jpg',
      title1: ' ليبتون',
      title2: 'أحمد تي',
    );
  }
}
