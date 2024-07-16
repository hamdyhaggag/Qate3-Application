import 'package:flutter/cupertino.dart';

import '../../../../../../../constants/bring_model.dart';

class BringOil extends StatelessWidget {
  const BringOil({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 13;
      },
      barTitle: 'بديل الزيوت للأطفال',
      imagePath1: 'assets/Children/Bring/O1.png',
      imagePath2: 'assets/Children/Bring/O2.png',
      imagePath3: 'assets/Children/Bring/O3.png',
      imagePath4: 'assets/Children/Bring/O4.png',
      imagePath5: 'assets/Children/Bring/O5.png',
      imagePath6: 'assets/Children/Bring/O6.png',
      imagePath7: 'assets/Children/Bring/O7.png',
      imagePath8: 'assets/Children/Bring/O8.png',
      imagePath9: 'assets/Children/Bring/O9.png',
      imagePath10: 'assets/Children/Bring/O10.png',
      imagePath11: 'assets/Children/Bring/O11.png',
      imagePath12: 'assets/Children/Bring/O12.png',
      imagePath13: 'assets/Children/Bring/O13.png',
      title1: 'نونو',
      title2: 'بيبي',
      title3: 'بلانكي',
      title4: ' بندولين',
      title5: 'سوبر كيدز',
      title6: 'منتجات فاتيكا',
      title7: ' تولا',
      title8: 'بيبي دارو ',
      title9: ' إيفر بيور',
      title10: 'باشن بيبي',
      title11: 'ديفول',
      title12: 'آي كير',
      title13: 'بيبي وايبس',
    );
  }
}
