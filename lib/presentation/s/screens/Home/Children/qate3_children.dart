import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Children extends StatelessWidget {
  const Qate3Children({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 10;
      },
      barTitle: ' مستلزمات الأطفال المقاطعة',
      imagePath1: 'assets/Children/Qate3/1.jpg',
      imagePath2: 'assets/Children/Qate3/2.jpg',
      imagePath3: 'assets/Children/Qate3/3.jpg',
      imagePath4: 'assets/Children/Qate3/4.jpg',
      imagePath5: 'assets/Children/Qate3/5.jpg',
      imagePath6: 'assets/Children/Qate3/6.jpg',
      imagePath7: 'assets/Children/Qate3/7.jpg',
      imagePath8: 'assets/Children/Qate3/8.jpg',
      imagePath9: 'assets/Children/Qate3/9.jpg',
      imagePath10: 'assets/Children/Qate3/10.jpg',
      title1: ' ',
      title2: '',
      title3: '',
      title4: ' ',
      title5: ' ',
      title6: ' ',
      title7: '  ',
      title8: '',
      title9: '',
      title10: '',
    );
  }
}
