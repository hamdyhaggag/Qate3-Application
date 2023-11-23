import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Soda extends StatelessWidget {
  const Qate3Soda({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 12;
      },
      barTitle: ' المشروبات الغازية المقاطعة',
      imagePath1: 'assets/Drinks/Qate3/s1.jpg',
      imagePath2: 'assets/Drinks/Qate3/s2.jpg',
      imagePath3: 'assets/Drinks/Qate3/s3.jpg',
      imagePath4: 'assets/Drinks/Qate3/s4.jpg',
      imagePath5: 'assets/Drinks/Qate3/s5.jpg',
      imagePath6: 'assets/Drinks/Qate3/s6.jpg',
      imagePath7: 'assets/Drinks/Qate3/s7.jpg',
      imagePath8: 'assets/Drinks/Qate3/s8.jpg',
      imagePath9: 'assets/Drinks/Qate3/s9.jpg',
      imagePath10: 'assets/Drinks/Qate3/s10.jpg',
      imagePath11: 'assets/Drinks/Qate3/s11.jpg',
      imagePath12: 'assets/Drinks/Qate3/s12.jpg',
      title1: 'سفن أب',
      title2: 'ريدبول',
      title3: 'فانتا',
      title4: 'كوكاكولا',
      title5: 'شويبس',
      title6: 'مونيستر',
      title7: 'ماونتن ديو',
      title8: 'ميرندا',
      title9: 'سبرايت',
      title10: 'بربيكان',
      title11: 'موسي',
      title12: 'بيبسي',
    );
  }
}
