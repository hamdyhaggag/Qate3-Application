import 'package:flutter/cupertino.dart';

import '../../../../../../../constants/bring_model.dart';

class BringHalib extends StatelessWidget {
  const BringHalib({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 8;
      },
      barTitle: 'بديل حليب للأطفال ',
      imagePath1: 'assets/Children/Bring/MILK1.png',
      imagePath2: 'assets/Children/Bring/MILK2.png',
      imagePath3: 'assets/Children/Bring/MILK3.png',
      imagePath4: 'assets/Children/Bring/MILK4.png',
      imagePath5: 'assets/Children/Bring/MILK5.png',
      imagePath6: 'assets/Children/Bring/MILK6.png',
      imagePath7: 'assets/Children/Bring/MILK7.png',
      imagePath8: 'assets/Children/Bring/MILK8.png',
      title1: 'ميرو',
      title2: 'لاتيريا',
      title3: 'هيلثي',
      title4: '  لبنيتا',
      title5: 'مزارع دينا',
      title6: 'لمار',
      title7: ' جهينة',
      title8: ' توب فاليو',
    );
  }
}
