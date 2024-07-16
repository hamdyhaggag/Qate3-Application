import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Perfium extends StatelessWidget {
  const Qate3Perfium({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 10;
      },
      barTitle: ' منتجات البرفيوم و اللوشن  المقاطعة',
      imagePath1: 'assets/personal/Qate3/p1.png',
      imagePath2: 'assets/personal/Qate3/p2.png',
      imagePath3: 'assets/personal/Qate3/p3.png',
      imagePath4: 'assets/personal/Qate3/p4.png',
      imagePath5: 'assets/personal/Qate3/p5.png',
      imagePath6: 'assets/personal/Qate3/p6.png',
      imagePath7: 'assets/personal/Qate3/p7.png',
      imagePath8: 'assets/personal/Qate3/p8.png',
      imagePath9: 'assets/cosmetic/Qate3/8.png',
      imagePath10: 'assets/personal/Qate3/l1.png',
      title1: 'لايف إز',
      title2: 'بلوم',
      title3: 'فيتشي',
      title4: 'فيكتوريا سيكريت',
      title5: 'توباكو فلاور',
      title6: 'إنديان نايت',
      title7: 'لافي إيست بيل',
      title8: 'سوفاج',
      title9: 'باث أند بودي',
      title10: 'فيكتوريا سيكريت',
    );
  }
}
