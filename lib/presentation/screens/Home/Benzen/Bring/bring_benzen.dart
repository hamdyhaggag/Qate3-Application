import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringBenzen extends StatelessWidget {
  const BringBenzen({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' محطات البنزين والزيوت البديلة',
      imagePath1: 'assets/Benzen/Bring/1.png',
      imagePath2: 'assets/Benzen/Bring/2.png',
      imagePath3: 'assets/Benzen/Bring/3.png',
      imagePath4: 'assets/Benzen/Bring/4.png',
      imagePath5: 'assets/Benzen/Bring/5.png',
      imagePath6: 'assets/Benzen/Bring/6.png',
      title1: 'مصر للبترول',
      title2: 'شيلد ',
      title3: 'سي بي سي ',
      title4: 'الوطنية',
      title5: 'تشل أوت ',
      title6: 'التعاون للبترول',
    );
  }
}
