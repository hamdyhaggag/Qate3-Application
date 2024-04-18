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
      imagePath1: 'assets/Children/Qate3/MILK1.jpg',
      imagePath2: 'assets/Children/Qate3/MILK2.jpg',
      imagePath3: 'assets/Children/Qate3/MILK3.jpg',
      imagePath4: 'assets/Children/Qate3/MILK4.jpg',
      imagePath5: 'assets/Children/Qate3/MILK5.jpg',
      imagePath6: 'assets/Children/Qate3/MILK6.jpg',

      title1: 'نيدو',
      title2: 'بيبيلاك',
      title3: 'نان',
      title4: 'بروميس ',
      title5: 'بروجرس جولد',
      title6: 'دانجو',

    );
  }
}
