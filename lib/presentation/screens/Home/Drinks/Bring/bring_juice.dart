import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringJuice extends StatelessWidget {
  const BringJuice({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' منتجات العصير البديلة',
      imagePath1: 'assets/Drinks/Bring/j1.png',
      imagePath2: 'assets/Drinks/Bring/j2.png',
      imagePath3: 'assets/Drinks/Bring/j3.png',
      imagePath4: 'assets/Drinks/Bring/j4.png',
      imagePath5: 'assets/Drinks/Bring/j5.png',
      imagePath6: 'assets/Drinks/Bring/j6.png',
      title1: 'بست',
      title2: ' فروتي',
      title3: ' عصير دينا ',
      title4: '  عصير أجا ',
      title5: 'عصير جهينة',
      title6: 'سن توب ',
    );
  }
}
