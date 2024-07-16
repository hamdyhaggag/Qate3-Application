import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Notilla extends StatelessWidget {
  const Qate3Notilla({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 1;
      },
      barTitle: ' منتجات النوتيلا المقاطعة',
      imagePath1: 'assets/kitchen/Qate3/n1.png',
      title1: 'نوتيلا',
    );
  }
}
