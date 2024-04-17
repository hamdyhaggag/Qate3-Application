import 'package:flutter/cupertino.dart';
import '../../../../../../constants/qate3_model.dart';

class Qate3Indomi extends StatelessWidget {
  const Qate3Indomi({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 1;
      },
      barTitle: ' منتجات الإندومي المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/ind1.jpg',
      title1: 'كيلوجز نودلز',

    );
  }
}
