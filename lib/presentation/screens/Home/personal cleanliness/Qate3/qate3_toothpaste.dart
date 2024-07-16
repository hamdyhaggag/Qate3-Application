import 'package:flutter/cupertino.dart';
import '../../../../../../constants/qate3_model.dart';

class Qate3Toothpaste extends StatelessWidget {
  const Qate3Toothpaste({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 7;
      },
      barTitle: ' منتجات العناية بالفم المقاطعة',
      imagePath1: 'assets/personal/Qate3/t1.png',
      imagePath2: 'assets/personal/Qate3/t2.png',
      imagePath3: 'assets/personal/Qate3/t3.png',
      imagePath4: 'assets/personal/Qate3/t4.png',
      imagePath5: 'assets/personal/Qate3/t5.png',
      imagePath6: 'assets/personal/Qate3/t6.png',
      imagePath7: 'assets/personal/Qate3/t7.png',
      title1: 'كولجيت',
      title2: 'سيجنال',
      title3: 'أورال بي',
      title4: 'كريست',
      title5: 'سنسوداين',
      title6: 'كلوز اب',
      title7: 'مسواك',
    );
  }
}
