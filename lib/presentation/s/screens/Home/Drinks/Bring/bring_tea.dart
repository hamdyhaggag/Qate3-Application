import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringTea extends StatelessWidget {
  const BringTea({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: ' منتجات الشاي البديلة',
      imagePath1: 'assets/Drinks/Bring/t1.jpg',
      imagePath2: 'assets/Drinks/Bring/t2.jpg',
      imagePath3: 'assets/Drinks/Bring/t3.jpg',
      imagePath4: 'assets/Drinks/Bring/t4.jpg',
      title1: 'شاي العروسة',
      title2: 'شاي ربيع',
      title3: ' شاي الكبوس',
      title4: ' شاي استكانة',
    );
  }
}
