import 'package:flutter/cupertino.dart';
import '../../../../../../constants/qate3_model.dart';

class Qate3Toothpaste extends StatelessWidget {
  const Qate3Toothpaste({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' منتجات العناية بالفم المقاطعة',
      imagePath1: 'assets/personal/Qate3/t1.jpg',
      imagePath2: 'assets/personal/Qate3/t2.jpg',
      imagePath3: 'assets/personal/Qate3/t3.jpg',
      imagePath4: 'assets/personal/Qate3/t4.jpg',
      imagePath5: 'assets/personal/Qate3/t5.jpg',
      imagePath6: 'assets/personal/Qate3/t6.jpg',
      title1: 'كولجيت',
      title2: 'سيجنال',
      title3: 'أورال بي',
      title4: 'كريست',
      title5: 'سنسوداين',
      title6: 'كلوز اب',
    );
  }
}
