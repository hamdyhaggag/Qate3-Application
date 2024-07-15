import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringSpray extends StatelessWidget {
  const BringSpray({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات مزيل العرق البديلة',
      imagePath1: 'assets/personal/Bring/s1.jpg',
      imagePath2: 'assets/personal/Bring/s2.jpg',
      imagePath3: 'assets/personal/Bring/s3.jpg',
      imagePath4: 'assets/personal/Bring/s4.jpg',
      imagePath5: 'assets/personal/Bring/s5.jpg',
      title1: 'دراكون',
      title2: 'فيبكس',
      title3: 'ميلاتكس',
      title4: 'العود الملكي',
      title5: 'بيز لاين',
    );
  }
}
