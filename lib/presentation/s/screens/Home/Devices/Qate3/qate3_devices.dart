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
