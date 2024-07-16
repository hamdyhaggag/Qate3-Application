import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringFlight extends StatelessWidget {
  const BringFlight({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 8;
      },
      barTitle: 'رحلات الطيران البديلة',
      imagePath1: 'assets/flight/Bring/1.png',
      imagePath2: 'assets/flight/Bring/2.png',
      imagePath3: 'assets/flight/Bring/3.png',
      imagePath4: 'assets/flight/Bring/4.png',
      imagePath5: 'assets/flight/Bring/5.png',
      imagePath6: 'assets/flight/Bring/6.png',
      imagePath7: 'assets/flight/Bring/7.png',
      imagePath8: 'assets/flight/Bring/8.png',
      title1: ' مصر للطيران ',
      title2: ' إير كايرو ',
      title3: 'النيل للطيران',
      title4: 'فلاي إيجيبت',
      title5: ' ويز اير',
      title6: ' الخطوط التركية ',
      title7: ' الخطوط القطرية ',
      title8: 'الطيران العماني  ',
    );
  }
}
