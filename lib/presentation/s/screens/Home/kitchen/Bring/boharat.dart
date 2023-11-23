import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringBoharat extends StatelessWidget {
  const BringBoharat({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: '  منتجات البهارات البديلة',
      imagePath1: 'assets/kitchen/Bring/bo1.jpg',
      imagePath2: 'assets/kitchen/Bring/bo2.jpg',
      imagePath3: 'assets/kitchen/Bring/bo3.jpg',
      imagePath4: 'assets/kitchen/Bring/bo4.jpg',
      title1: 'حاج عرفة ',
      title2: '  تشيكن شيبسي ',
      title3: '  الضحى',
      title4: ' تتبيلة التكا ',
    );
  }
}
