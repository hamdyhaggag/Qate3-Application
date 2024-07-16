import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringDevices extends StatelessWidget {
  const BringDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 11;
      },
      barTitle: ' منتجات الأجهزة البديلة',
      imagePath1: 'assets/Devices/Bring/1.png',
      imagePath2: 'assets/Devices/Bring/2.png',
      imagePath3: 'assets/Devices/Bring/3.png',
      imagePath4: 'assets/Devices/Bring/4.png',
      imagePath5: 'assets/Devices/Bring/5.png',
      imagePath6: 'assets/Devices/Bring/6.png',
      imagePath7: 'assets/Devices/Bring/7.png',
      imagePath8: 'assets/Devices/Bring/8.png',
      imagePath9: 'assets/Devices/Bring/9.png',
      imagePath10: 'assets/Devices/Bring/10.png',
      imagePath11: 'assets/Devices/Bring/11.png',
      title1: 'تورنادو',
      title2: ' توشيبا',
      title3: 'شارب',
      title4: 'إل جي',
      title5: ' شاومي',
      title6: 'سامسونج',
      title7: 'اوليمبيك الكتريك',
      title8: 'كريازي ',
      title9: ' فريش ',
      title10: ' جاك ',
      title11: ' هايير ',
    );
  }
}
