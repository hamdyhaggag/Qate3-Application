import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringDevices extends StatelessWidget {
  const BringDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 8;
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
      title1: '',
      title2: ' ',
      title3: '',
      title4: '',
      title5: ' ',
      title6: '  ',
      title7: '  ',
      title8: '  ',
    );
  }
}
