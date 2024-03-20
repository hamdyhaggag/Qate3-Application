import 'package:flutter/cupertino.dart';

import '../../../../../../constants/qate3_model.dart';

class Qate3Chocolate extends StatelessWidget {
  const Qate3Chocolate({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 14;
      },
      barTitle: ' منتجات الشيكولاته المقاطعة',
      imagePath1: 'assets/Snacks/Qate3/cho1.jpg',
      imagePath2: 'assets/Snacks/Qate3/cho2.jpg',
      imagePath3: 'assets/Snacks/Qate3/cho3.jpg',
      imagePath4: 'assets/Snacks/Qate3/cho4.jpg',
      imagePath5: 'assets/Snacks/Qate3/cho5.jpg',
      imagePath6: 'assets/Snacks/Qate3/cho6.jpg',
      imagePath7: 'assets/Snacks/Qate3/cho7.jpg',
      imagePath8: 'assets/Snacks/Qate3/cho8.jpg',
      imagePath9: 'assets/Snacks/Qate3/cho9.jpg',
      imagePath10: 'assets/Snacks/Qate3/cho10.jpg',
      imagePath11: 'assets/Snacks/Qate3/cho11.jpg',
      imagePath12: 'assets/Snacks/Qate3/cho12.jpg',
      imagePath13: 'assets/Snacks/Qate3/cho13.jpg',
      imagePath14: 'assets/Snacks/Qate3/cho14.jpg',
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
    );
  }
}
