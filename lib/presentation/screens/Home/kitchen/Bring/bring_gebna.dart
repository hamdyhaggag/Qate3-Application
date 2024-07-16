import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringGebna extends StatelessWidget {
  const BringGebna({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 10;
      },
      barTitle: ' منتجات الألبان البديلة',
      imagePath1: 'assets/kitchen/Bring/g1.png',
      imagePath2: 'assets/kitchen/Bring/g2.png',
      imagePath3: 'assets/kitchen/Bring/g3.png',
      imagePath4: 'assets/kitchen/Bring/g4.png',
      imagePath5: 'assets/kitchen/Bring/g5.png',
      imagePath6: 'assets/kitchen/Bring/g6.png',
      imagePath7: 'assets/kitchen/Bring/g8.png',
      imagePath8: 'assets/kitchen/Bring/g9.png',
      imagePath9: 'assets/kitchen/Bring/g10.png',
      imagePath10: 'assets/kitchen/Bring/g11.png',
      title1: ' لبنيتا',
      title2: ' عبور لاند ',
      title3: 'تشيزا',
      title4: ' كاتيلو',
      title5: ' مزارع دينا ',
      title6: 'خير المصريين ',
      title7: 'هيلثي',
      title8: 'رودس ',
      title9: 'دومتي',
      title10: 'ريماس لاند',
    );
  }
}
