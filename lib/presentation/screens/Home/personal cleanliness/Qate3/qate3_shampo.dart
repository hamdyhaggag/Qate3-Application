import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Shampo extends StatelessWidget {
  const Qate3Shampo({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 11;
      },
      barTitle: ' منتجات الشامبو المقاطعة',
      imagePath1: 'assets/personal/Qate3/sh1.png',
      imagePath2: 'assets/personal/Qate3/sh2.png',
      imagePath3: 'assets/personal/Qate3/sh3.png',
      imagePath4: 'assets/personal/Qate3/sh4.png',
      imagePath5: 'assets/personal/Qate3/sh5.png',
      imagePath6: 'assets/personal/Qate3/sh6.png',
      imagePath7: 'assets/personal/Qate3/sh7.png',
      imagePath8: 'assets/personal/Qate3/sh8.png',
      imagePath9: 'assets/personal/Qate3/sh9.png',
      imagePath10: 'assets/personal/Qate3/sh10.png',
      imagePath11: 'assets/personal/Qate3/sh11.png',
      title1: 'كريستاس',
      title2: 'إلفيف',
      title3: 'كليو',
      title4: 'جونسون',
      title5: 'جاميكان بلاك',
      title6: 'صانسيلك',
      title7: 'بانتين',
      title8: 'لوكس',
      title9: 'هيد أند شولدر',
      title10: 'كلير',
      title11: 'لوريال',
    );
  }
}
