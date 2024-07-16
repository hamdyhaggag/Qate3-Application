import 'package:flutter/cupertino.dart';

import '../../../../../../../constants/qate3_model.dart';

class Qate3Oil extends StatelessWidget {
  const Qate3Oil({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 2;
      },
      barTitle: ' الزيوت للأطفال مقاطعة',
      imagePath1: 'assets/Children/Qate3/O1.png',
      imagePath2: 'assets/Children/Qate3/O2.png',
      title1: 'منتجات جونسون',
      title2: 'منتجات سانوسان',
    );
  }
}
