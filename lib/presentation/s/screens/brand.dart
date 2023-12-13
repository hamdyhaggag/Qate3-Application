import 'package:flutter/material.dart';
import 'package:qate3_app/constants/qate3_model.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Qate3Model(
      itemCountCallback: (index) {
        return 12;
      },
      barTitle: ' مقاطعة المنتجات الرائدة',
      imagePath1: 'assets/home/33.jpg',
      imagePath2: 'assets/home/34.jpg',
      imagePath3: 'assets/home/35.jpg',
      imagePath4: 'assets/home/36.jpg',
      imagePath5: 'assets/home/39.jpg',
      imagePath6: 'assets/home/40.jpg',
      imagePath7: 'assets/home/41.jpg',
      imagePath8: 'assets/home/42.jpg',
      imagePath9: 'assets/home/43.jpg',
      imagePath10: 'assets/home/44.jpg',
      imagePath11: 'assets/home/45.jpg',
      imagePath12: 'assets/home/46.jpg',
      title1: 'أمازون',
      title2: 'نون',
      title3: 'طلبات',
      title4: 'كارفور',
      title5: 'فايفر',
      title6: 'ديزني',
      title7: 'نتفليكس',
      title8: 'انتل',
      title9: 'اتش بي',
      title10: 'ديل',
      title11: '365 سكور',
      title12: 'بايونير',
    );
  }
}
