import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Bring/bring_perfium.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Bring/bring_shampo.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Bring/bring_spray.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Bring/bring_toothpaste.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Qate3/qate3_perfium.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Qate3/qate3_shampo.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Qate3/qate3_spray.dart';
import 'package:qate3_app/presentation/s/screens/Home/personal%20cleanliness/Qate3/qate3_toothpaste.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';
import 'package:qate3_app/presentation/s/widgets.dart';
import '../../../../../constants/custom_category_item.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/home/26.jpg',
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
        imageUrl: 'assets/home/27.jpg',
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
        imageUrl: 'assets/home/28.jpg',
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
        imageUrl: 'assets/home/29.jpg',
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
      backgroundColor: Colors.white,
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
