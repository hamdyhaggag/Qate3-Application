import 'package:flutter/cupertino.dart';
import '../../../../../../constants/qate3_model.dart';

class Qate3lban extends StatelessWidget {
  const Qate3lban({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: ' منتجات اللبان المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/l1.png',
      imagePath2: 'assets/Snacks/Qate3/l2.png',
      imagePath3: 'assets/Snacks/Qate3/l3.png',
      imagePath4: 'assets/Snacks/Qate3/l4.png',
      title1: 'ترايدنت',
      title2: ' تشكلتس',
      title3: ' هولز',
      title4: '  كلورتس',
    );
  }
}
