import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

import '../../../../constants/custom_category_item.dart';
import '../../../widgets.dart';
import '../../custom_choise.dart';
import 'Bring/bring_perfium.dart';
import 'Bring/bring_shampo.dart';
import 'Bring/bring_spray.dart';
import 'Bring/bring_toothpaste.dart';
import 'Qate3/qate3_perfium.dart';
import 'Qate3/qate3_shampo.dart';
import 'Qate3/qate3_spray.dart';
import 'Qate3/qate3_toothpaste.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/home/26.png',
        title: 'مزيل العرق',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'مزيل العرق',
              screen1: Qate3Spray(),
              screen2: BringSpray(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/27.png',
        title: 'الشامبو',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'الشامبو',
              screen1: Qate3Shampo(),
              screen2: BringShampo(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/28.png',
        title: ' البرفيوم و اللوشن',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'البرفيوم و اللوشن',
              screen1: Qate3Perfium(),
              screen2: BringPerfium(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/29.png',
        title: 'العناية بالفم و الأسنان',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'معجون الأسنان',
              screen1: Qate3Toothpaste(),
              screen2: BringToothpaste(),
            )),
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CustomAppBar(title: 'قسم العناية الشخصية', isHome: false),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: categoryItems.length,
        itemBuilder: (BuildContext context, int index) {
          final item = categoryItems[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: item.onTap,
              child: CustomCategoryItem(
                imageUrl1: item.imageUrl,
                title1: item.title,
                subtitle1: item.subtitle ?? '',
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoryItemData {
  final String imageUrl;
  final String title;
  final String? subtitle; // Making subtitle optional
  final Function()? onTap;

  CategoryItemData({
    required this.imageUrl,
    required this.title,
    this.subtitle, // Update the parameter to make it optional
    required this.onTap,
  });
}
