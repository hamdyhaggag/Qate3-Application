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
      imagePath1: 'assets/kitchen/Bring/bou1.png',
      imagePath2: 'assets/kitchen/Bring/bou2.png',
      imagePath3: 'assets/kitchen/Bring/bou3.png',
      imagePath4: 'assets/kitchen/Bring/bou4.png',
      imagePath5: 'assets/kitchen/Bring/bou5.png',
      imagePath6: 'assets/kitchen/Bring/bou6.png',
      imagePath7: 'assets/kitchen/Bring/bou7.png',
      imagePath8: 'assets/kitchen/Bring/bou8.png',
      imagePath9: 'assets/kitchen/Bring/bou9.png',
      imagePath10: 'assets/kitchen/Bring/bou10.png',
      imagePath11: 'assets/kitchen/Bring/bou11.png',
      imagePath12: 'assets/kitchen/Bring/bou12.png',
      imagePath13: 'assets/kitchen/Bring/bou13.png',
      imagePath14: 'assets/kitchen/Bring/bou14.png',
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
