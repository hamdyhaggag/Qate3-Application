import 'package:flutter/cupertino.dart';

import '../../../../../../../constants/qate3_model.dart';

class Qate3Hafadat extends StatelessWidget {
  const Qate3Hafadat({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 1;
      },
      barTitle: ' حفاضات الأطفال المقاطعة',
      imagePath1: 'assets/Children/Qate3/H1.png',
      title1: 'بامبرز',
    );
  }
}
