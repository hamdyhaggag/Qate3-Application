import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringMedicine extends StatelessWidget {
  const BringMedicine({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 10;
      },
      barTitle: 'منتجات الأدوية البديلة',
      imagePath1: 'assets/Medicine/Bring/1.png',
      imagePath2: 'assets/Medicine/Bring/2.png',
      imagePath3: 'assets/Medicine/Bring/3.png',
      imagePath4: 'assets/Medicine/Bring/4.png',
      imagePath5: 'assets/Medicine/Bring/5.png',
      imagePath6: 'assets/Medicine/Bring/6.png',
      imagePath7: 'assets/Medicine/Bring/7.png',
      imagePath8: 'assets/Medicine/Bring/8.png',
      imagePath9: 'assets/Medicine/Bring/9.png',
      imagePath10: 'assets/Medicine/Bring/10.png',
      title1: 'Misr Pharma ',
      title2: ' Alex Pharma',
      title3: 'Gypto Pharma',
      title4: 'Amriya ',
      title5: 'rameda',
      title6: 'Pharco',
      title7: ' Nile',
      title8: 'CID ',
      title9: 'MUP ',
      title10: 'Epico',
    );
  }
}
