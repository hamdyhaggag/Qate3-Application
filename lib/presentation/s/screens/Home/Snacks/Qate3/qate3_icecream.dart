import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Icecream extends StatelessWidget {
  const Qate3Icecream({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 7;
      },
      barTitle: ' منتجات الأيس كريم المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/i1.jpg',
      imagePath2: 'assets/Snacks/Qate3/i2.jpg',
      imagePath3: 'assets/Snacks/Qate3/i3.jpg',
      imagePath4: 'assets/Snacks/Qate3/i4.jpg',
      imagePath5: 'assets/Snacks/Qate3/i5.jpg',
      imagePath6: 'assets/Snacks/Qate3/i6.jpg',
      imagePath7: 'assets/Snacks/Qate3/i7.jpg',
      title1: 'دولسي',
      title2: ' ميجا',
      title3: 'كيمو كونو',
      title4: ' أوريو ',
      title5: 'دولسيكا',
      title6: 'كرنفاليتا',
      title7: 'سكويز',
    );
  }
}
