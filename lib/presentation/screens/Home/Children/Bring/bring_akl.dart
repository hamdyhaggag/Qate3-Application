import 'package:flutter/cupertino.dart';

import '../../../../../../../constants/bring_model.dart';

class BringAkl extends StatelessWidget {
  const BringAkl({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: 'كورن فليكس البديل',
      imagePath1: 'assets/Children/Bring/E1.jpg',
      imagePath2: 'assets/Children/Bring/E2.jpg',
      imagePath3: 'assets/Children/Bring/E3.jpg',
      imagePath4: 'assets/Children/Bring/E4.jpg',



      title1: 'ريري',
      title2: 'روزو',
      title3: 'روز جاردن',
      title4: ' ديلانسي',



    );
  }
}
