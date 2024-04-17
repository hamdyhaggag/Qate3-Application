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
      imagePath1: 'assets/Drinks/Bring/s1.jpg',
      imagePath2: 'assets/Drinks/Bring/s2.jpg',
      imagePath3: 'assets/Drinks/Bring/s3.jpg',
      imagePath4: 'assets/Drinks/Bring/s4.jpg',
      imagePath5: 'assets/Drinks/Bring/s5.jpg',
      imagePath6: 'assets/Drinks/Bring/s6.jpg',
      imagePath7: 'assets/Drinks/Bring/s7.jpg',
      imagePath8: 'assets/Drinks/Bring/s8.jpg',
      imagePath9: 'assets/Drinks/Bring/s9.jpg',
      imagePath10: 'assets/Drinks/Bring/s10.jpg',
      imagePath11: 'assets/Drinks/Bring/s11.jpg',
      imagePath12: 'assets/Drinks/Bring/s12.jpg',
      imagePath13: 'assets/Drinks/Bring/s13.jpg',
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
