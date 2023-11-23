import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringCoffee extends StatelessWidget {
  const BringCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: ' منتجات القهوة البديلة',
      imagePath1: 'assets/Drinks/Bring/c1.jpg',
      imagePath2: 'assets/Drinks/Bring/c2.jpg',
      imagePath3: 'assets/Drinks/Bring/c3.jpg',
      imagePath4: 'assets/Drinks/Bring/c4.jpg',
      title1: 'بن العروبة',
      title3: 'أبو عوف',
      title4: ' عماد أفندي',
      title2: '  حاج عرفة',
    );
  }
}
