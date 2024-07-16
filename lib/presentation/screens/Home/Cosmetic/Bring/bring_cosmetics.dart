import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringCosmetics extends StatelessWidget {
  const BringCosmetics({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 19;
      },
      barTitle: '  منتجات التجميل البديلة',
      imagePath1: 'assets/cosmetic/Bring/1.png',
      imagePath2: 'assets/cosmetic/Bring/2.png',
      imagePath3: 'assets/cosmetic/Bring/3.png',
      imagePath4: 'assets/cosmetic/Bring/4.png',
      imagePath5: 'assets/cosmetic/Bring/5.png',
      imagePath6: 'assets/cosmetic/Bring/6.png',
      imagePath7: 'assets/cosmetic/Bring/7.png',
      imagePath8: 'assets/cosmetic/Bring/8.png',
      imagePath9: 'assets/cosmetic/Bring/9.png',
      imagePath10: 'assets/cosmetic/Bring/10.png',
      imagePath11: 'assets/cosmetic/Bring/11.png',
      imagePath12: 'assets/cosmetic/Bring/12.png',
      imagePath13: 'assets/cosmetic/Bring/13.png',
      imagePath14: 'assets/cosmetic/Bring/14.png',
      imagePath15: 'assets/cosmetic/Bring/15.png',
      imagePath16: 'assets/cosmetic/Bring/16.png',
      imagePath17: 'assets/cosmetic/Bring/17.png',
      imagePath18: 'assets/cosmetic/Bring/18.png',
      imagePath19: 'assets/cosmetic/Bring/19.png',
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
      title15: ' شيجلام',
      title16: ' بايوديرما',
      title17: ' فارم ستاي',
      title18: 'منتجات أرجينتو',
      title19: 'شان جيل',
    );
  }
}
