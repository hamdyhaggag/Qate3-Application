import 'package:flutter/cupertino.dart';

import '../../../../../../../constants/qate3_model.dart';

class Qate3Akl extends StatelessWidget {
  const Qate3Akl({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' كورن فليكس المقاطعة',
      imagePath1: 'assets/Children/Qate3/E1.jpg',
      imagePath2: 'assets/Children/Qate3/E2.jpg',
      imagePath3: 'assets/Children/Qate3/E3.jpg',
      imagePath4: 'assets/Children/Qate3/E4.jpg',
      imagePath5: 'assets/Children/Qate3/E5.jpg',
      imagePath6: 'assets/Children/Qate3/E6.jpg',

      title1: 'سيريلاك',
      title2: 'كانتري',
      title3: 'تشوكابيك',
      title4: ' كوكو بافس',
      title5: 'نيسكويك',
      title6: 'بليدينا',

    );
  }
}
