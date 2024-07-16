import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Clean extends StatelessWidget {
  const Qate3Clean({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 15;
      },
      barTitle: ' منتجات المنظفات المقاطعة',
      imagePath1: 'assets/clean/Qate3/1.png',
      imagePath2: 'assets/clean/Qate3/2.png',
      imagePath3: 'assets/clean/Qate3/3.png',
      imagePath4: 'assets/clean/Qate3/4.png',
      imagePath5: 'assets/clean/Qate3/5.png',
      imagePath6: 'assets/clean/Qate3/6.png',
      imagePath7: 'assets/clean/Qate3/7.png',
      imagePath8: 'assets/clean/Qate3/8.png',
      imagePath9: 'assets/clean/Qate3/9.png',
      imagePath10: 'assets/clean/Qate3/10.png',
      imagePath11: 'assets/clean/Qate3/11.png',
      imagePath12: 'assets/clean/Qate3/12.png',
      imagePath13: 'assets/clean/Qate3/13.png',
      imagePath14: 'assets/clean/Qate3/14.png',
      imagePath15: 'assets/clean/Qate3/15.png',
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
