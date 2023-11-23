import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringJuice extends StatelessWidget {
  const BringJuice({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات العصير البديلة',
      imagePath1: 'assets/Drinks/Bring/j1.jpg',
      imagePath2: 'assets/Drinks/Bring/j2.jpg',
      imagePath3: 'assets/Drinks/Bring/j3.jpg',
      imagePath4: 'assets/Drinks/Bring/j4.jpg',
      imagePath5: 'assets/Drinks/Bring/j5.jpg',
      title1: 'بست',
      title2: ' فروتي',
      title3: ' عصير دينا ',
      title4: '  عصير أجا ',
      title5: 'عصير جهينة',
    );
  }
}
