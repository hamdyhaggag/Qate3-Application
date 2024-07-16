import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringRestaurent extends StatelessWidget {
  const BringRestaurent({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات المطاعم البديلة',
      imagePath1: 'assets/restaurent/Bring/1.png',
      imagePath2: 'assets/restaurent/Bring/2.png',
      imagePath3: 'assets/restaurent/Bring/3.png',
      imagePath4: 'assets/restaurent/Bring/4.png',
      imagePath5: 'assets/restaurent/Bring/5.png',
      title1: 'بافلو برجر',
      title2: 'بازوكا',
      title3: 'بريموز',
      title4: 'بان ان بان',
      title5: 'هارت أتاك',
    );
  }
}
