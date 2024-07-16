import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Devices extends StatelessWidget {
  const Qate3Devices({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 13;
      },
      barTitle: ' منتجات الأجهزة المقاطعة',
      imagePath1: 'assets/Devices/Qate3/1.png',
      imagePath2: 'assets/Devices/Qate3/2.png',
      imagePath3: 'assets/Devices/Qate3/3.png',
      imagePath4: 'assets/Devices/Qate3/4.png',
      imagePath5: 'assets/Devices/Qate3/5.png',
      imagePath6: 'assets/Devices/Qate3/6.png',
      imagePath7: 'assets/Devices/Qate3/7.png',
      imagePath8: 'assets/Devices/Qate3/8.png',
      imagePath9: 'assets/Devices/Qate3/9.png',
      imagePath10: 'assets/Devices/Qate3/10.png',
      imagePath11: 'assets/Devices/Qate3/11.png',
      imagePath12: 'assets/Devices/Qate3/12.png',
      imagePath13: 'assets/Devices/Qate3/13.png',
      title1: ' جروهي ',
      title2: 'جينرال إليكتريك ',
      title3: ' براون',
      title4: 'مولينكس ',
      title5: ' فيليبس',
      title6: 'زانوسي',
      title7: 'أريستون',
      title8: 'هيتاشي',
      title9: ' بوش',
      title10: 'باناسونيك  ',
      title11: '   إيزي',
      title12: ' ديلونجي ',
      title13: '  بلاك اند ديكر',
    );
  }
}
