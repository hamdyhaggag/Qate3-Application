import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringLban extends StatelessWidget {
  const BringLban({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 3;
      },
      barTitle: 'منتجات اللبان البديلة',
      imagePath1: 'assets/Snacks/Bring/l1.png',
      imagePath2: 'assets/Snacks/Bring/l2.png',
      imagePath3: 'assets/Snacks/Bring/l3.png',
      title1: ' لبان غندور',
      title2: 'لبان ماربيلا',
      title3: 'لبان هارت جم',
    );
  }
}
