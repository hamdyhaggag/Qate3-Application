import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Perfium extends StatelessWidget {
  const Qate3Perfium({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 8;
      },
      barTitle: ' منتجات البرفيوم المقاطعة',
      imagePath1: 'assets/personal/Qate3/p1.jpg',
      imagePath2: 'assets/personal/Qate3/p2.jpg',
      imagePath3: 'assets/personal/Qate3/p3.jpg',
      imagePath4: 'assets/personal/Qate3/p4.jpg',
      imagePath5: 'assets/personal/Qate3/p5.jpg',
      imagePath6: 'assets/personal/Qate3/p6.jpg',
      imagePath7: 'assets/personal/Qate3/p7.jpg',
      imagePath8: 'assets/personal/Qate3/p8.jpg',
      title1: 'لايف إز',
      title2: 'بلوم',
      title3: 'فيشي',
      title4: 'فيكتوريا سيكريت',
      title5: 'بيور واندر',
      title6: 'توباكو فلاور',
      title7: 'إنديان نايت',
      title8: 'لافي إيست بيل',
    );
  }
}
