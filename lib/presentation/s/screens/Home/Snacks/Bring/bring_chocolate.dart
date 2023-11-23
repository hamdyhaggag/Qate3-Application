import 'package:flutter/cupertino.dart';

import '../../../../../../constants/bring_model.dart';

class BringChocolate extends StatelessWidget {
  const BringChocolate({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 1;
      },
      barTitle: 'منتجات الشيكولاته البديلة',
      imagePath1: 'assets/Snacks/Bring/cho1.jpg',
      title1: ' كتاكيتو',
    );
  }
}
