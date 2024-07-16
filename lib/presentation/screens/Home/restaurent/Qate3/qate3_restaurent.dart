import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Restaurent extends StatelessWidget {
  const Qate3Restaurent({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 17;
      },
      barTitle: ' المطاعم والكافيهات المقاطعة',
      imagePath1: 'assets/restaurent/Qate3/1.png',
      imagePath2: 'assets/restaurent/Qate3/2.png',
      imagePath3: 'assets/restaurent/Qate3/3.png',
      imagePath4: 'assets/restaurent/Qate3/4.png',
      imagePath5: 'assets/restaurent/Qate3/5.png',
      imagePath6: 'assets/restaurent/Qate3/6.png',
      imagePath7: 'assets/restaurent/Qate3/7.png',
      imagePath8: 'assets/restaurent/Qate3/8.png',
      imagePath9: 'assets/restaurent/Qate3/9.png',
      imagePath10: 'assets/restaurent/Qate3/10.png',
      imagePath11: 'assets/restaurent/Qate3/11.png',
      imagePath12: 'assets/restaurent/Qate3/12.png',
      imagePath13: 'assets/restaurent/Qate3/13.png',
      imagePath14: 'assets/restaurent/Qate3/14.png',
      imagePath15: 'assets/restaurent/Qate3/15.png',
      imagePath16: 'assets/restaurent/Qate3/16.png',
      imagePath17: 'assets/restaurent/Qate3/17.png',
      title1: 'شيبوتلي',
      title2: ' صب واي',
      title3: 'ويمبي ',
      title4: 'ستار باكس',
      title5: ' بابا جونز',
      title6: ' بيتزا هات',
      title7: ' دانكن دونتس',
      title8: 'ماكدونالدز',
      title9: 'دومينوز',
      title10: 'برجر كينج',
      title11: 'هارديز',
      title12: 'كنتاكي',
      title13: 'سينابون',
      title14: 'باريستا',
      title15: 'ماك كافيه',
      title16: 'توليز',
      title17: 'سيركل كيه',
    );
  }
}
