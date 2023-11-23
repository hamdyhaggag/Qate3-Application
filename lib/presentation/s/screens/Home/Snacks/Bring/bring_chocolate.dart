import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringChocolate extends StatelessWidget {
  const BringChocolate({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 4;
      },
      barTitle: 'منتجات الشيكولاته البديلة',
      imagePath1: 'assets/Snacks/Bring/cho1.jpg',
      imagePath2: 'assets/Snacks/Bring/cho2.jpg',
      imagePath3: 'assets/Snacks/Bring/cho3.jpg',
      imagePath4: 'assets/Snacks/Bring/cho4.jpg',
      title1: ' كتاكيتو',
      title2: ' ديسباسيتو',
      title3: ' كورونا',
      title4: ' بيور',
    );
  }
}
