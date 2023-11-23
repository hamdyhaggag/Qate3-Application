import 'package:flutter/cupertino.dart';
import '../../../../../../constants/bring_model.dart';

class BringBounce extends StatelessWidget {
  const BringBounce({super.key});

  @override
  Widget build(BuildContext context) {
    return BringModel(
      itemCountCallback: (index) {
        return 14;
      },
      barTitle: ' المنتجات الإضافية البديلة',
      imagePath1: 'assets/kitchen/Bring/bou1.jpg',
      imagePath2: 'assets/kitchen/Bring/bou2.jpg',
      imagePath3: 'assets/kitchen/Bring/bou3.jpg',
      imagePath4: 'assets/kitchen/Bring/bou4.jpg',
      imagePath5: 'assets/kitchen/Bring/bou5.jpg',
      imagePath6: 'assets/kitchen/Bring/bou6.jpg',
      imagePath7: 'assets/kitchen/Bring/bou7.jpg',
      imagePath8: 'assets/kitchen/Bring/bou8.jpg',
      imagePath9: 'assets/kitchen/Bring/bou9.jpg',
      imagePath10: 'assets/kitchen/Bring/bou10.jpg',
      imagePath11: 'assets/kitchen/Bring/bou11.jpg',
      imagePath12: 'assets/kitchen/Bring/bou12.jpg',
      imagePath13: 'assets/kitchen/Bring/bou13.jpg',
      imagePath14: 'assets/kitchen/Bring/bou14.jpg',
      title1: 'مايونيز مايو',
      title2: ' هيلثي سبريد ',
      title3: 'طحينة توب فاليو',
      title4: ' صوص مامز فود ',
      title5: ' كاتشب زيرو تريت ',
      title6: 'صوص قها',
      title7: 'صوص جياردينو',
      title8: 'صوص العين',
      title9: 'صوص هارفست',
      title10: 'صوص وادي فود',
      title11: 'كاتشب مي صوص',
      title12: 'لايت فيت',
      title13: 'كاكاو دريم',
      title14: 'كاكاو كورونا',
    );
  }
}
