import 'package:flutter/cupertino.dart';
import 'package:qate3_app/constants/bring_model.dart';

class BringClothes extends StatelessWidget {
  const BringClothes({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: ' محطات البنزين والزيوت البديلة',
      imagePath1: 'assets/clothes/Bring/1.jpg',
      imagePath2: 'assets/clothes/Bring/2.jpg',
      imagePath3: 'assets/clothes/Bring/3.jpg',
      imagePath4: 'assets/clothes/Bring/4.jpg',
      imagePath5: 'assets/clothes/Bring/5.jpg',
      imagePath6: 'assets/clothes/Bring/6.jpg',
      title1: 'مصر للبترول',
      title2: 'شيلد ',
      title3: 'سي بي سي ',
      title4: 'الوطنية',
      title5: 'تشل أوت ',
      title6: 'التعاون للبترول',
    );
  }
}
