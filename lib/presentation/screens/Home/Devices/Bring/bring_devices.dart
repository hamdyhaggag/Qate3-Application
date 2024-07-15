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
      imagePath1: 'assets/Devices/Bring/1.jpg',
      imagePath2: 'assets/Devices/Bring/2.jpg',
      imagePath3: 'assets/Devices/Bring/3.jpg',
      imagePath4: 'assets/Devices/Bring/4.jpg',
      imagePath5: 'assets/Devices/Bring/5.jpg',
      imagePath6: 'assets/Devices/Bring/6.jpg',
      imagePath7: 'assets/Devices/Bring/7.jpg',
      imagePath8: 'assets/Devices/Bring/8.jpg',
      imagePath9: 'assets/Devices/Bring/9.jpg',
      imagePath10: 'assets/Devices/Bring/10.jpg',
      imagePath11: 'assets/Devices/Bring/11.jpg',
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
