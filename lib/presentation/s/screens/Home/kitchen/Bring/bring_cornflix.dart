import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringCornFlix extends StatelessWidget {
  const BringCornFlix({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: ' منتجات الكورن فليكس البديلة',
      imagePath1: 'assets/kitchen/Bring/c1.jpg',
      imagePath2: 'assets/kitchen/Bring/c2.jpg',
      imagePath3: 'assets/kitchen/Bring/c3.jpg',
      imagePath4: 'assets/kitchen/Bring/c4.jpg',
      title1: 'كورن فليكس',
      title2: ' كوكو شيلز ',
      title3: 'روز جاردن',
      title4: 'صن فليكس',
    );
  }
}
