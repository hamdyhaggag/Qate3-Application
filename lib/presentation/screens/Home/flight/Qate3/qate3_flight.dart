import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Flight extends StatelessWidget {
  const Qate3Flight({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 9;
      },
      barTitle: ' رحلات الطيران المقاطعة',
      imagePath1: 'assets/flight/Qate3/1.jpg',
      imagePath2: 'assets/flight/Qate3/2.jpg',
      imagePath3: 'assets/flight/Qate3/3.jpg',
      imagePath4: 'assets/flight/Qate3/4.jpg',
      imagePath5: 'assets/flight/Qate3/5.jpg',
      imagePath6: 'assets/flight/Qate3/6.jpg',
      imagePath7: 'assets/flight/Qate3/7.jpg',
      imagePath8: 'assets/flight/Qate3/8.jpg',
      imagePath9: 'assets/flight/Qate3/9.jpg',
      title1: '  إير كندا',
      title2: 'طيران ناس ',
      title3: 'العربية للطيران ',
      title4: 'لوفتهانزا',
      title5: ' طيران الخليج',
      title6: ' سكاي كارجو',
      title7: 'طيران الاتحاد  ',
      title8: 'الطيران الفرنسي',
      title9: 'طيران الإمارات',
    );
  }
}
