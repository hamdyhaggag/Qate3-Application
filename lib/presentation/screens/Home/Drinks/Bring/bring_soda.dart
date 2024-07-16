import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringSoda extends StatelessWidget {
  const BringSoda({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 13;
      },
      barTitle: ' المشروبات الغازية البديلة',
      imagePath1: 'assets/Drinks/Bring/s1.png',
      imagePath2: 'assets/Drinks/Bring/s2.png',
      imagePath3: 'assets/Drinks/Bring/s3.png',
      imagePath4: 'assets/Drinks/Bring/s4.png',
      imagePath5: 'assets/Drinks/Bring/s5.png',
      imagePath6: 'assets/Drinks/Bring/s6.png',
      imagePath7: 'assets/Drinks/Bring/s7.png',
      imagePath8: 'assets/Drinks/Bring/s8.png',
      imagePath9: 'assets/Drinks/Bring/s9.png',
      imagePath10: 'assets/Drinks/Bring/s10.png',
      imagePath11: 'assets/Drinks/Bring/s11.png',
      imagePath12: 'assets/Drinks/Bring/s12.png',
      imagePath13: 'assets/Drinks/Bring/s13.png',
      title1: 'سينا كولا',
      title2: 'بيج كولا',
      title3: 'فري جو',
      title4: 'سبيرو سباتس',
      title5: ' أوزيس',
      title6: 'أجا',
      title7: 'سنابس',
      title8: 'في سفن',
      title9: 'باز',
      title10: 'جرين كولا',
      title11: ' فريز',
      title12: ' يو جو',
      title13: ' ماكسي',
    );
  }
}
