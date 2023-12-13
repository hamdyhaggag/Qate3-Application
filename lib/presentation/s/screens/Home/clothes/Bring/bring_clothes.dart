import 'package:flutter/cupertino.dart';
import 'package:qate3_app/constants/bring_model.dart';

class BringClothes extends StatelessWidget {
  const BringClothes({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 15;
      },
      barTitle: ' منتجات الملابس البديلة',
      imagePath1: 'assets/clothes/Bring/1.jpg',
      imagePath2: 'assets/clothes/Bring/2.jpg',
      imagePath3: 'assets/clothes/Bring/3.jpg',
      imagePath4: 'assets/clothes/Bring/4.jpg',
      imagePath5: 'assets/clothes/Bring/5.jpg',
      imagePath6: 'assets/clothes/Bring/6.jpg',
      imagePath7: 'assets/clothes/Bring/7.jpg',
      imagePath8: 'assets/clothes/Bring/8.jpg',
      imagePath9: 'assets/clothes/Bring/9.jpg',
      imagePath10: 'assets/clothes/Bring/10.jpg',
      imagePath11: 'assets/clothes/Bring/11.jpg',
      imagePath12: 'assets/clothes/Bring/12.jpg',
      imagePath13: 'assets/clothes/Bring/13.jpg',
      imagePath14: 'assets/clothes/Bring/14.jpg',
      imagePath15: 'assets/clothes/Bring/15.jpg',
      title1: ' ',
      title2: ' ',
      title3: '   ',
      title4: '',
      title5: '  ',
      title6: ' ',
      title7: ' ',
      title8: ' ',
      title9: ' ',
      title10: ' ',
      title11: ' ',
      title12: ' ',
      title13: ' ',
      title14: ' ',
      title15: ' ',
    );
  }
}
