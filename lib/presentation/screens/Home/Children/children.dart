import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:qate3_app/constants/custom_category_item.dart';
import '../../../widgets.dart';
import '../../custom_choise.dart';
import 'Bring/bring_akl.dart';
import 'Bring/bring_hafadat.dart';
import 'Bring/bring_halib.dart';
import 'Bring/bring_oil.dart';
import 'Qate3/qate3_akl.dart';
import 'Qate3/qate3_hafadat.dart';
import 'Qate3/qate3_halib.dart';
import 'Qate3/qate3_oil.dart';

class ChildrenScreen extends StatelessWidget {
  const ChildrenScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/Children/Qate3/MILK1.jpg',
        title: ' الحليب',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'الحليب',
              screen1: Qate3Halib(),
              screen2: BringHalib(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/Children/Bring/O1.jpg',
        title: ' الزيوت و الشامبو',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'الزيوت و الشامبو',
              screen1: Qate3Oil(),
              screen2: BringOil(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/Children/Qate3/E1.jpg',
        title: 'كورن فليكس',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'كورن فليكس',
              screen1: Qate3Akl(),
              screen2: BringAkl(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/Children/Bring/H3.jpg',
        title: 'الحفاضات',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'الحفاضات',
              screen1: Qate3Hafadat(),
              screen2: BringHafadat(),
            )),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'قسم مستلزمات الأطفال', isHome: false),
      body: SingleChildScrollView(
        child: GridView.builder(
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
      ),
    );
  }
}

class CategoryItemData {
  final String imageUrl;
  final String title;
  final String? subtitle;
  final Function()? onTap;

  CategoryItemData({
    required this.imageUrl,
    required this.title,
    this.subtitle,
    required this.onTap,
  });
}
