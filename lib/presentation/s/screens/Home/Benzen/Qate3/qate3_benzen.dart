import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Benzen extends StatelessWidget {
  const Qate3Benzen({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 9;
      },
      barTitle: ' محطات البنزين المقاطعة',
      imagePath1: 'assets/Benzen/Qate3/1.jpg',
      imagePath2: 'assets/Benzen/Qate3/2.jpg',
      imagePath3: 'assets/Benzen/Qate3/3.jpg',
      imagePath4: 'assets/Benzen/Qate3/4.jpg',
      imagePath5: 'assets/Benzen/Qate3/5.jpg',
      imagePath6: 'assets/Benzen/Qate3/6.jpg',
      imagePath7: 'assets/Benzen/Qate3/7.jpg',
      imagePath8: 'assets/Benzen/Qate3/8.jpg',
      imagePath9: 'assets/Benzen/Qate3/9.jpg',
      title1: 'موبيل',
      title2: 'شل ',
      title3: ' إسو',
      title4: 'توتال',
      title5: ' امارات',
      title6: ' كاسترول',
      title7: 'موتل ',
      title8: 'ليكوي مولي',
      title9: 'أدنوك',
    );
  }
}
