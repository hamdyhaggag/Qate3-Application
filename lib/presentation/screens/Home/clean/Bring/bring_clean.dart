import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringClean extends StatelessWidget {
  const BringClean({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 18;
      },
      barTitle: ' منتجات المنظفات البديلة',
      imagePath1: 'assets/clean/Bring/1.png',
      imagePath2: 'assets/clean/Bring/2.png',
      imagePath3: 'assets/clean/Bring/3.png',
      imagePath4: 'assets/clean/Bring/4.png',
      imagePath5: 'assets/clean/Bring/5.png',
      imagePath6: 'assets/clean/Bring/6.png',
      imagePath7: 'assets/clean/Bring/7.png',
      imagePath8: 'assets/clean/Bring/8.png',
      imagePath9: 'assets/clean/Bring/9.png',
      imagePath10: 'assets/clean/Bring/10.png',
      imagePath11: 'assets/clean/Bring/11.png',
      imagePath12: 'assets/clean/Bring/12.png',
      imagePath13: 'assets/clean/Bring/13.png',
      imagePath14: 'assets/clean/Bring/14.png',
      imagePath15: 'assets/clean/Bring/15.png',
      imagePath16: 'assets/clean/Bring/16.png',
      imagePath17: 'assets/clean/Bring/17.png',
      imagePath18: 'assets/clean/Bring/18.png',
      title1: 'بريكس',
      title2: 'توب فاليو',
      title3: 'فيبا',
      title4: 'بولوت',
      title5: ' رابيد',
      title6: 'وفير ',
      title7: ' وريتكس',
      title8: 'سافو',
      title9: 'ايه بي سي',
      title10: 'فلفيتا ',
      title11: 'فريدا ',
      title12: 'ويفس ',
      title13: 'ماكسل ',
      title14: 'سبيد فلاش ',
      title15: 'كلوريل ',
      title16: 'ليدر ',
      title17: 'مدار ',
      title18: 'أوكسي ',
    );
  }
}
