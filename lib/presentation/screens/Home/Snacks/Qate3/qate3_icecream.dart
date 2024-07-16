import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Icecream extends StatelessWidget {
  const Qate3Icecream({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 9;
      },
      barTitle: ' منتجات الأيس كريم المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/i1.png',
      imagePath2: 'assets/Snacks/Qate3/i2.png',
      imagePath3: 'assets/Snacks/Qate3/i3.png',
      imagePath4: 'assets/Snacks/Qate3/i4.png',
      imagePath5: 'assets/Snacks/Qate3/i5.png',
      imagePath6: 'assets/Snacks/Qate3/i6.png',
      imagePath7: 'assets/Snacks/Qate3/i7.png',
      imagePath8: 'assets/Snacks/Qate3/i8.png',
      imagePath9: 'assets/Snacks/Qate3/i9.png',
      title1: 'دولسي',
      title2: ' ميجا',
      title3: 'كيمو كونو',
      title4: ' أوريو ',
      title5: 'دولسيكا',
      title6: 'كرنفاليتا',
      title7: 'سكويز',
      title8: 'كيت كات',
      title9: 'برادايس ',
    );
  }
}
