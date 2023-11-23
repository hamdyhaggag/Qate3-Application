import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringMilk extends StatelessWidget {
  const BringMilk({super.key});
  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 11;
      },
      barTitle: ' منتجات الألبان البديلة',
      imagePath1: 'assets/Drinks/Bring/m1.jpg',
      imagePath2: 'assets/Drinks/Bring/m2.jpg',
      imagePath3: 'assets/Drinks/Bring/m3.jpg',
      imagePath4: 'assets/Drinks/Bring/m4.jpg',
      imagePath5: 'assets/Drinks/Bring/m5.jpg',
      imagePath6: 'assets/Drinks/Bring/m6.jpg',
      imagePath7: 'assets/Drinks/Bring/m7.jpg',
      imagePath8: 'assets/Drinks/Bring/m8.jpg',
      imagePath9: 'assets/Drinks/Bring/m9.jpg',
      imagePath10: 'assets/Drinks/Bring/m10.jpg',
      imagePath11: 'assets/Drinks/Bring/m11.jpg',
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
    );
  }
}
