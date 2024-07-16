import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Bank extends StatelessWidget {
  const Qate3Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' منتجات البنوك المقاطعة',
      imagePath1: 'assets/Bank/Qate3/1.png',
      imagePath2: 'assets/Bank/Qate3/2.png',
      imagePath3: 'assets/Bank/Qate3/3.png',
      imagePath4: 'assets/Bank/Qate3/4.png',
      imagePath5: 'assets/Bank/Qate3/5.png',
      imagePath6: 'assets/Bank/Qate3/6.png',
      title1: ' بنك أبو ظبي ',
      title2: 'سي اي بي ',
      title3: ' كريدى اجريكول',
      title4: 'سيتي بنك',
      title5: 'اتش اس بي سي ',
      title6: ' باركليز بنك',
    );
  }
}
