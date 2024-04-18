import 'package:flutter/cupertino.dart';

import '../../../../../../../constants/bring_model.dart';

class BringHafadat extends StatelessWidget {
  const BringHafadat({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 6;
      },
      barTitle: 'حفاضات الأطفال البديلة',
      imagePath1: 'assets/Children/Bring/H1.jpg',
      imagePath2: 'assets/Children/Bring/H2.jpg',
      imagePath3: 'assets/Children/Bring/H3.jpg',
      imagePath4: 'assets/Children/Bring/H4.jpg',
      imagePath5: 'assets/Children/Bring/H5.jpg',
      imagePath6: 'assets/Children/Bring/H6.jpg',


      title1: 'مولفيكس',
      title2: 'فاين بيبي',
      title3: 'بيبي جوي',
      title4: 'بامبي ',
      title5: 'جود كير',
      title6: 'هالو بيبي',


    );
  }
}
