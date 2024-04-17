import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringChildren extends StatelessWidget {
  const BringChildren({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 10;
      },
      barTitle: 'مستلزمات الأطفال البديلة',
      imagePath1: 'assets/Children/Bring/1.jpg',
      imagePath2: 'assets/Children/Bring/2.jpg',
      imagePath3: 'assets/Children/Bring/3.jpg',
      imagePath4: 'assets/Children/Bring/4.jpg',
      imagePath5: 'assets/Children/Bring/5.jpg',
      imagePath6: 'assets/Children/Bring/6.jpg',
      imagePath7: 'assets/Children/Bring/7.jpg',
      imagePath8: 'assets/Children/Bring/8.jpg',
      imagePath9: 'assets/Children/Bring/9.jpg',
      imagePath10: 'assets/Children/Bring/10.jpg',

      title1: '',
      title2: '',
      title3: '',
      title4: ' ',
      title5: '',
      title6: '',
      title7: ' ',
      title8: ' ',
      title9: ' ',
      title10: '',

    );
  }
}
