import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringBank extends StatelessWidget {
  const BringBank({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 5;
      },
      barTitle: ' منتجات البنوك البديلة',
      imagePath1: 'assets/Bank/Bring/1.jpg',
      imagePath2: 'assets/Bank/Bring/2.jpg',
      imagePath3: 'assets/Bank/Bring/3.jpg',
      imagePath4: 'assets/Bank/Bring/4.jpg',
      imagePath5: 'assets/Bank/Bring/5.jpg',
      title1: ' البنك الأهلي ',
      title2: ' بنك مصر ',
      title3: 'بنك القاهرة',
      title4: 'بنك الإسكندرية',
      title5: ' بنك قطر ',
    );
  }
}
