import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringCoffee extends StatelessWidget {
  const BringCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 3;
      },
      barTitle: ' منتجات القهوة البديلة',
      imagePath1: 'assets/Drinks/Bring/c1.png',
      imagePath2: 'assets/Drinks/Bring/c2.png',
      imagePath3: 'assets/Drinks/Bring/c4.png',
      title1: 'بن العروبة',
      title2: '  حاج عرفة',
      title3: ' عماد أفندي',
    );
  }
}
