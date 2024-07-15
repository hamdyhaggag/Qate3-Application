import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringShampo extends StatelessWidget {
  const BringShampo({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 12;
      },
      barTitle: ' منتجات الشامبو البديلة',
      imagePath1: 'assets/personal/Bring/sh1.jpg',
      imagePath2: 'assets/personal/Bring/sh2.jpg',
      imagePath3: 'assets/personal/Bring/sh3.jpg',
      imagePath4: 'assets/personal/Bring/sh4.jpg',
      imagePath5: 'assets/personal/Bring/sh5.jpg',
      imagePath6: 'assets/personal/Bring/sh6.jpg',
      imagePath7: 'assets/personal/Bring/sh7.jpg',
      imagePath8: 'assets/personal/Bring/sh8.jpg',
      imagePath9: 'assets/personal/Bring/sh9.jpg',
      imagePath10: 'assets/personal/Bring/sh10.jpg',
      imagePath11: 'assets/personal/Bring/sh11.jpg',
      imagePath12: 'assets/personal/Bring/sh12.jpg',
      title1: 'بندولين',
      title2: 'سيلينجينا',
      title3: 'الوكيتا',
      title4: 'بليس',
      title5: 'تولا',
      title6: 'سترونج فيل',
      title7: 'ريان',
      title8: 'فوليكل بوستر',
      title9: 'سباركل',
      title10: 'هير كير',
      title11: 'ليلاك',
      title12: 'كلير هيلثي',
    );
  }
}
