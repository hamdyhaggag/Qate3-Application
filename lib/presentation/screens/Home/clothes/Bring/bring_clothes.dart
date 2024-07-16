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
      imagePath1: 'assets/clothes/Bring/1.png',
      imagePath2: 'assets/clothes/Bring/2.png',
      imagePath3: 'assets/clothes/Bring/3.png',
      imagePath4: 'assets/clothes/Bring/4.png',
      imagePath5: 'assets/clothes/Bring/5.png',
      imagePath6: 'assets/clothes/Bring/6.png',
      imagePath7: 'assets/clothes/Bring/7.png',
      imagePath8: 'assets/clothes/Bring/8.png',
      imagePath9: 'assets/clothes/Bring/9.png',
      imagePath10: 'assets/clothes/Bring/10.png',
      imagePath11: 'assets/clothes/Bring/11.png',
      imagePath12: 'assets/clothes/Bring/12.png',
      imagePath13: 'assets/clothes/Bring/13.png',
      imagePath14: 'assets/clothes/Bring/14.png',
      imagePath15: 'assets/clothes/Bring/15.png',
      title1: 'استبرق ',
      title2: ' سترة',
      title3: '  تاي هاوس ',
      title4: 'دوت',
      title5: ' تاون تيم ',
      title6: 'ريفين ',
      title7: ' ديفاكتو',
      title8: ' ستينج',
      title9: ' باترول',
      title10: 'كازاري ',
      title11: ' دالي دريس',
      title12: ' يو تيرن',
      title13: 'نيوبورن ',
      title14: ' موباكو',
      title15: 'مينز كلاب ',
    );
  }
}
