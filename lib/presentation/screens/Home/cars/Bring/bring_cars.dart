import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringCars extends StatelessWidget {
  const BringCars({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' منتجات السيارات البديلة',
      imagePath1: 'assets/cars/Bring/1.png',
      imagePath2: 'assets/cars/Bring/2.png',
      imagePath3: 'assets/cars/Bring/3.png',
      imagePath4: 'assets/cars/Bring/4.png',
      imagePath5: 'assets/cars/Bring/5.png',
      imagePath6: 'assets/cars/Bring/6.png',
      title1: 'بي واي دي',
      title2: 'إم جي ',
      title3: 'جيلي',
      title4: 'لادا',
      title5: 'بروتون ',
      title6: ' سانج يونج',
    );
  }
}
