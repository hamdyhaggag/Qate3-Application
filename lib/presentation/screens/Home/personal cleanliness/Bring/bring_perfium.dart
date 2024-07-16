import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringPerfium extends StatelessWidget {
  const BringPerfium({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 10;
      },
      barTitle: ' منتجات البرفيوم و اللوشن البديلة',
      imagePath1: 'assets/personal/Bring/p1.png',
      imagePath2: 'assets/personal/Bring/p2.png',
      imagePath3: 'assets/personal/Bring/p3.png',
      imagePath4: 'assets/personal/Bring/p4.png',
      imagePath5: 'assets/personal/Bring/p5.png',
      imagePath6: 'assets/personal/Bring/p6.png',
      imagePath7: 'assets/personal/Bring/p7.png',
      imagePath8: 'assets/personal/Bring/p8.png',
      imagePath9: 'assets/personal/Bring/l1.png',
      imagePath10: 'assets/personal/Bring/l2.png',
      title1: 'زد',
      title2: 'إيفايدنس',
      title3: 'جوفيالتي',
      title4: 'ذا بوينت',
      title5: 'ليلاك',
      title6: 'ماجيك',
      title7: 'سليكشن',
      title8: 'ستيت اوف مايند',
      title9: 'إيفا',
      title10: 'أفوفا',
    );
  }
}
