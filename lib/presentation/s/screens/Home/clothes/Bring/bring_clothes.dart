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
