import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Spray extends StatelessWidget {
  const Qate3Spray({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 8;
      },
      barTitle: ' منتجات مزيل العرق المقاطعة',
      imagePath1: 'assets/personal/Qate3/s1.jpg',
      imagePath2: 'assets/personal/Qate3/s2.jpg',
      imagePath3: 'assets/personal/Qate3/s3.jpg',
      imagePath4: 'assets/personal/Qate3/s4.jpg',
      imagePath5: 'assets/personal/Qate3/s5.jpg',
      imagePath6: 'assets/personal/Qate3/s6.jpg',
      imagePath7: 'assets/personal/Qate3/s7.jpg',
      imagePath8: 'assets/personal/Qate3/s8.jpg',
      title1: 'فا',
      title2: 'ريكسونا',
      title3: 'نوير',
      title4: 'دوف',
      title5: 'أكس',
      title6: 'ليدي سبيد ستيك',
      title7: 'نيفيا',
      title8: 'فيتشي رول ان',
    );
  }
}
