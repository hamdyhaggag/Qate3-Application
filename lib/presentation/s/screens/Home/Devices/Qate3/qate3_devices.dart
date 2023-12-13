import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Devices extends StatelessWidget {
  const Qate3Devices({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 16;
      },
      barTitle: ' منتجات الأجهزة المقاطعة',
      imagePath1: 'assets/Devices/Qate3/1.jpg',
      imagePath2: 'assets/Devices/Qate3/2.jpg',
      imagePath3: 'assets/Devices/Qate3/3.jpg',
      imagePath4: 'assets/Devices/Qate3/4.jpg',
      imagePath5: 'assets/Devices/Qate3/5.jpg',
      imagePath6: 'assets/Devices/Qate3/6.jpg',
      imagePath7: 'assets/Devices/Qate3/7.jpg',
      imagePath8: 'assets/Devices/Qate3/8.jpg',
      imagePath9: 'assets/Devices/Qate3/9.jpg',
      imagePath10: 'assets/Devices/Qate3/10.jpg',
      imagePath11: 'assets/Devices/Qate3/11.jpg',
      imagePath12: 'assets/Devices/Qate3/12.jpg',
      imagePath13: 'assets/Devices/Qate3/13.jpg',
      imagePath14: 'assets/Devices/Qate3/14.jpg',
      imagePath15: 'assets/Devices/Qate3/15.jpg',
      imagePath16: 'assets/Devices/Qate3/16.jpg',
      title1: '  ',
      title2: ' ',
      title3: ' ',
      title4: '',
      title5: ' ',
      title6: ' ',
      title7: ' ',
      title8: '',
      title9: '',
      title10: '',
      title11: '',
      title12: ' ',
      title13: '  ',
      title14: '   ',
      title15: '  ',
      title16: '  ',
    );
  }
}
