import 'package:flutter/cupertino.dart';

import '../../../../../../../constants/qate3_model.dart';

class Qate3Halib extends StatelessWidget {
  const Qate3Halib({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' حليب للأطفال مقاطعة',
      imagePath1: 'assets/Children/Qate3/MILK1.png',
      imagePath2: 'assets/Children/Qate3/MILK2.png',
      imagePath3: 'assets/Children/Qate3/MILK3.png',
      imagePath4: 'assets/Children/Qate3/MILK4.png',
      imagePath5: 'assets/Children/Qate3/MILK5.png',
      imagePath6: 'assets/Children/Qate3/MILK6.png',
      title1: 'نيدو',
      title2: 'بيبيلاك',
      title3: 'نان',
      title4: 'بروميس ',
      title5: 'بروجرس جولد',
      title6: 'دانجو',
    );
  }
}
