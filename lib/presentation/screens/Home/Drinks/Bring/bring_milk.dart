import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringMilk extends StatelessWidget {
  const BringMilk({super.key});
  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 12;
      },
      barTitle: ' منتجات الألبان البديلة',
      imagePath1: 'assets/Drinks/Bring/m1.png',
      imagePath2: 'assets/Drinks/Bring/m2.png',
      imagePath3: 'assets/Drinks/Bring/m3.png',
      imagePath4: 'assets/Drinks/Bring/m4.png',
      imagePath5: 'assets/Drinks/Bring/m5.png',
      imagePath6: 'assets/Drinks/Bring/m6.png',
      imagePath7: 'assets/Drinks/Bring/m7.png',
      imagePath8: 'assets/Drinks/Bring/m8.png',
      imagePath9: 'assets/Drinks/Bring/m9.png',
      imagePath10: 'assets/Drinks/Bring/m10.png',
      imagePath11: 'assets/Drinks/Bring/m11.png',
      imagePath12: 'assets/Drinks/Qate3/m5.png',
      title1: 'توب فاليو',
      title2: ' دومتي ',
      title3: 'ريري',
      title4: 'ريماس لاند',
      title5: ' روس جاردن',
      title6: 'هيلثي ',
      title7: ' مزارع دينا',
      title8: 'جهينة',
      title9: 'عبور لاند',
      title10: 'لمار',
      title11: 'بخيره',
      title12: 'المراعي',
    );
  }
}
