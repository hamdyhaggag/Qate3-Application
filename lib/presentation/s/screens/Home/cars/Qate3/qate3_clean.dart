import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Cars extends StatelessWidget {
  const Qate3Cars({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 15;
      },
      barTitle: ' منتجات السيارات المقاطعة',
      imagePath1: 'assets/clean/Qate3/1.jpg',
      imagePath2: 'assets/clean/Qate3/2.jpg',
      imagePath3: 'assets/clean/Qate3/3.jpg',
      imagePath4: 'assets/clean/Qate3/4.jpg',
      imagePath5: 'assets/clean/Qate3/5.jpg',
      imagePath6: 'assets/clean/Qate3/6.jpg',
      imagePath7: 'assets/clean/Qate3/7.jpg',
      imagePath8: 'assets/clean/Qate3/8.jpg',
      imagePath9: 'assets/clean/Qate3/9.jpg',
      imagePath10: 'assets/clean/Qate3/10.jpg',
      imagePath11: 'assets/clean/Qate3/11.jpg',
      imagePath12: 'assets/clean/Qate3/12.jpg',
      imagePath13: 'assets/clean/Qate3/13.jpg',
      imagePath14: 'assets/clean/Qate3/14.jpg',
      imagePath15: 'assets/clean/Qate3/15.jpg',
      title1: 'بونكس',
      title2: ' أومو',
      title3: 'لايف بوي',
      title4: 'فانيش',
      title5: ' كلوركس',
      title6: ' داوني',
      title7: ' كامفورت',
      title8: 'جينرال',
      title9: 'فيري',
      title10: 'بيريل',
      title11: 'تايد',
      title12: 'إيريل',
      title13: 'برسيل ',
      title14: 'ديتول ',
      title15: 'هاربك ',
    );
  }
}
