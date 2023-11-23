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
      imagePath1: 'assets/personal/Qate3/sh1.jpg',
      imagePath2: 'assets/personal/Qate3/sh2.jpg',
      imagePath3: 'assets/personal/Qate3/sh3.jpg',
      imagePath4: 'assets/personal/Qate3/sh4.jpg',
      imagePath5: 'assets/personal/Qate3/sh5.jpg',
      imagePath6: 'assets/personal/Qate3/sh6.jpg',
      imagePath7: 'assets/personal/Qate3/sh7.jpg',
      imagePath8: 'assets/personal/Qate3/sh8.jpg',
      imagePath9: 'assets/personal/Qate3/sh9.jpg',
      imagePath10: 'assets/personal/Qate3/sh10.jpg',
      imagePath11: 'assets/personal/Qate3/sh11.jpg',
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
