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
      imagePath1: 'assets/personal/Bring/p1.jpg',
      imagePath2: 'assets/personal/Bring/p2.jpg',
      imagePath3: 'assets/personal/Bring/p3.jpg',
      imagePath4: 'assets/personal/Bring/p4.jpg',
      imagePath5: 'assets/personal/Bring/p5.jpg',
      imagePath6: 'assets/personal/Bring/p6.jpg',
      imagePath7: 'assets/personal/Bring/p7.jpg',
      imagePath8: 'assets/personal/Bring/p8.jpg',
      imagePath9: 'assets/personal/Bring/l1.jpg',
      imagePath10: 'assets/personal/Bring/l2.jpg',
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
