import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Chocolate extends StatelessWidget {
  const Qate3Chocolate({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 16;
      },
      barTitle: ' منتجات الشيكولاته المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/cho1.png',
      imagePath2: 'assets/Snacks/Qate3/cho2.png',
      imagePath3: 'assets/Snacks/Qate3/cho3.png',
      imagePath4: 'assets/Snacks/Qate3/cho4.png',
      imagePath5: 'assets/Snacks/Qate3/cho5.png',
      imagePath6: 'assets/Snacks/Qate3/cho6.png',
      imagePath7: 'assets/Snacks/Qate3/cho7.png',
      imagePath8: 'assets/Snacks/Qate3/cho8.png',
      imagePath9: 'assets/Snacks/Qate3/cho9.png',
      imagePath10: 'assets/Snacks/Qate3/cho10.png',
      imagePath11: 'assets/Snacks/Qate3/cho11.png',
      imagePath12: 'assets/Snacks/Qate3/cho12.png',
      imagePath13: 'assets/Snacks/Qate3/cho13.png',
      imagePath14: 'assets/Snacks/Qate3/cho14.png',
      imagePath15: 'assets/Snacks/Qate3/cho15.png',
      imagePath16: 'assets/kitchen/Qate3/n1.png',
      title1: 'باليستو',
      title2: 'مارز',
      title3: 'بونتي',
      title4: 'تويكس',
      title5: 'سنيكرز',
      title6: 'كيت كات',
      title7: 'إم أند إمز',
      title8: 'ديري ميلك ',
      title9: 'رول بريك',
      title10: 'بابلي',
      title11: 'باتر فينجر',
      title12: 'مالتيزرس',
      title13: 'جالاكسي',
      title14: 'مورو',
      title15: 'كيندر',
      title16: 'نوتيلا',
    );
  }
}
