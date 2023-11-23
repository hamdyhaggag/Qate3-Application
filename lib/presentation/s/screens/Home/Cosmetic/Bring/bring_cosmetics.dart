import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringCosmetics extends StatelessWidget {
  const BringCosmetics({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 14;
      },
      barTitle: '  منتجات التجميل البديلة',
      imagePath1: 'assets/cosmetic/Bring/1.jpg',
      imagePath2: 'assets/cosmetic/Bring/2.jpg',
      imagePath3: 'assets/cosmetic/Bring/3.jpg',
      imagePath4: 'assets/cosmetic/Bring/4.jpg',
      imagePath5: 'assets/cosmetic/Bring/5.jpg',
      imagePath6: 'assets/cosmetic/Bring/6.jpg',
      imagePath7: 'assets/cosmetic/Bring/7.jpg',
      imagePath8: 'assets/cosmetic/Bring/8.jpg',
      imagePath9: 'assets/cosmetic/Bring/9.jpg',
      imagePath10: 'assets/cosmetic/Bring/10.jpg',
      imagePath11: 'assets/cosmetic/Bring/11.jpg',
      imagePath12: 'assets/cosmetic/Bring/12.jpg',
      imagePath13: 'assets/cosmetic/Bring/13.jpg',
      imagePath14: 'assets/cosmetic/Bring/14.jpg',
      title1: 'أزها وايتنينج',
      title2: 'أرجان أويل',
      title3: 'أفون كير',
      title4: 'مخمرية الملكة',
      title5: 'كيرل واندر',
      title6: 'سباكلار جيل',
      title7: 'روز راديانس',
      title8: 'كوكونط أويل',
      title9: 'بوباي جل',
      title10: 'جامبو موود',
      title11: 'لورد',
      title12: 'أفوفا',
      title13: 'كوين بلس',
      title14: 'بوبانا سكرب',
    );
  }
}
