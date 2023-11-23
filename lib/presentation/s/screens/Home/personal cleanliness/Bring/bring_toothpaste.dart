import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringToothpaste extends StatelessWidget {
  const BringToothpaste({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 8;
      },
      barTitle: ' منتجات العناية بالفم البديلة',
      imagePath1: 'assets/personal/Bring/t1.jpg',
      imagePath2: 'assets/personal/Bring/t2.jpg',
      imagePath3: 'assets/personal/Bring/t3.jpg',
      imagePath4: 'assets/personal/Bring/t4.jpg',
      imagePath5: 'assets/personal/Bring/t5.jpg',
      imagePath6: 'assets/personal/Bring/t6.jpg',
      imagePath7: 'assets/personal/Bring/t7.jpg',
      imagePath8: 'assets/personal/Bring/t8.jpg',
      title1: 'فلورو',
      title2: 'رينسا كول',
      title3: 'مسواك',
      title4: 'دي جي كير',
      title5: 'دابر الأعشاب',
      title6: 'بي-فريش',
      title7: 'أكوا دنت',
      title8: 'إي زد - كير',
    );
  }
}
