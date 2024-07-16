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
      imagePath1: 'assets/personal/Bring/sh1.png',
      imagePath2: 'assets/personal/Bring/sh2.png',
      imagePath3: 'assets/personal/Bring/sh3.png',
      imagePath4: 'assets/personal/Bring/sh4.png',
      imagePath5: 'assets/personal/Bring/sh5.png',
      imagePath6: 'assets/personal/Bring/sh6.png',
      imagePath7: 'assets/personal/Bring/sh7.png',
      imagePath8: 'assets/personal/Bring/sh8.png',
      imagePath9: 'assets/personal/Bring/sh9.png',
      imagePath10: 'assets/personal/Bring/sh10.png',
      imagePath11: 'assets/personal/Bring/sh11.png',
      imagePath12: 'assets/personal/Bring/sh12.png',
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
