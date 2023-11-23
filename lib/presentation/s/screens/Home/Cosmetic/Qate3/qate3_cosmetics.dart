import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Cosmetics extends StatelessWidget {
  const Qate3Cosmetics({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 18;
      },
      barTitle: ' منتجات التجميل المقاطعة',
      imagePath1: 'assets/cosmetic/Qate3/1.jpg',
      imagePath2: 'assets/cosmetic/Qate3/2.jpg',
      imagePath3: 'assets/cosmetic/Qate3/3.jpg',
      imagePath4: 'assets/cosmetic/Qate3/4.jpg',
      imagePath5: 'assets/cosmetic/Qate3/5.jpg',
      imagePath6: 'assets/cosmetic/Qate3/6.jpg',
      imagePath7: 'assets/cosmetic/Qate3/7.jpg',
      imagePath8: 'assets/cosmetic/Qate3/8.jpg',
      imagePath9: 'assets/cosmetic/Qate3/9.jpg',
      imagePath10: 'assets/cosmetic/Qate3/10.jpg',
      imagePath11: 'assets/cosmetic/Qate3/11.jpg',
      imagePath12: 'assets/cosmetic/Qate3/12.jpg',
      imagePath13: 'assets/cosmetic/Qate3/13.jpg',
      imagePath14: 'assets/cosmetic/Qate3/14.jpg',
      imagePath15: 'assets/cosmetic/Qate3/15.jpg',
      imagePath16: 'assets/cosmetic/Qate3/16.jpg',
      imagePath17: 'assets/cosmetic/Qate3/17.jpg',
      imagePath18: 'assets/cosmetic/Qate3/18.jpg',
      title1: 'غارينيه بيور أكتيف',
      title2: 'كيرا في',
      title3: 'دووف',
      title4: 'لوريال باريس',
      title5: 'هايدرو بوست',
      title6: 'سوبر ستاي',
      title7: 'برايت كومبليت',
      title8: 'فينوس',
      title9: 'جيلات',
      title10: 'غارينيه سوبرفوود',
      title11: 'فازلين',
      title12: 'انفينيتي',
      title13: 'فاشيال كلينزر',
      title14: 'شان جيل',
      title15: 'كليو صن',
      title16: 'غارينيه برايت',
      title17: 'أكتي كلير',
      title18: 'دراكون',
    );
  }
}