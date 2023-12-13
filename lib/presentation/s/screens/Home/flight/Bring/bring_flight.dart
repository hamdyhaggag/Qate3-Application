import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringFlight extends StatelessWidget {
  const BringFlight({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' الطيران البديل',
      imagePath1: 'assets/Devices/Bring/1.jpg',
      imagePath2: 'assets/Devices/Bring/2.jpg',
      imagePath3: 'assets/Devices/Bring/3.jpg',
      imagePath4: 'assets/Devices/Bring/4.jpg',
      imagePath5: 'assets/Devices/Bring/5.jpg',
      imagePath6: 'assets/Devices/Bring/6.jpg',
      title1: 'بي واي دي',
      title2: 'إم جي ',
      title3: 'جيلي',
      title4: 'لادا',
      title5: 'بروتون ',
      title6: ' سانج يونج',
    );
  }
}
