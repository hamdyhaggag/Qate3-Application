import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringToothpaste extends StatelessWidget {
  const BringToothpaste({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 7;
      },
      barTitle: ' منتجات العناية بالفم البديلة',
      imagePath1: 'assets/personal/Bring/t1.jpg',
      imagePath2: 'assets/personal/Bring/t2.jpg',
      imagePath3: 'assets/personal/Bring/t3.jpg',
      imagePath4: 'assets/personal/Bring/t3.jpg',
      imagePath5: 'assets/personal/Bring/t5.jpg',
      imagePath6: 'assets/personal/Bring/t6.jpg',
      imagePath7: 'assets/personal/Bring/t7.jpg',
      title1: 'فلورو',
      title2: 'رينسا كول',
      title3: 'دي جي كير',
      title4: 'دابر الأعشاب',
      title5: 'بي-فريش',
      title6: 'أكوا دنت',
      title7: 'إي زد - كير',
    );
  }
}
