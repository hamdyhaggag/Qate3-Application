import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringNotilla extends StatelessWidget {
  const BringNotilla({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات النوتيلا البديلة',
      imagePath1: 'assets/kitchen/Bring/n1.jpg',
      imagePath2: 'assets/kitchen/Bring/n2.jpg',
      imagePath3: 'assets/kitchen/Bring/n3.jpg',
      imagePath4: 'assets/kitchen/Bring/n4.jpg',
      imagePath5: 'assets/kitchen/Bring/n5.jpg',
      title1: 'كانلا',
      title2: ' هشكريم ',
      title3: 'سما كريم',
      title4: ' جوليت فري ',
      title5: ' ماكس تيلا ',
    );
  }
}