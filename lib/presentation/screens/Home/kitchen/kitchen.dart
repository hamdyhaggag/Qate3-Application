import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:qate3_app/constants/custom_category_item.dart';

import '../../../widgets.dart';
import '../../custom_choise.dart';
import 'Bring/boharat.dart';
import 'Bring/bring_bouns.dart';
import 'Bring/bring_gebna.dart';
import 'Bring/bring_notilla.dart';
import 'Qate3/qate3_boharat.dart';
import 'Qate3/qate3_bouns.dart';
import 'Qate3/qate3_gebna.dart';
import 'Qate3/qate3_notilla.dart';

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/home/21.png',
        title: 'الجبن',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'الجبن',
              screen1: Qate3Gebna(),
              screen2: BringGebna(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/23.png',
        title: ' النوتيلا',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'النوتيلا',
              screen1: Qate3Notilla(),
              screen2: BringNotilla(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/24.png',
        title: ' البهارات',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'البهارات',
              screen1: Qate3Boharat(),
              screen2: BringBoharat(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/25.png',
        title: ' منتجات إضافية',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'منتجات إضافية',
              screen1: Qate3Bounce(),
              screen2: BringBounce(),
            )),
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CustomAppBar(title: 'قسم مستلزمات المطبخ', isHome: false),
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
  final String? subtitle; // Making subtitle optional
  final Function()? onTap;

  CategoryItemData({
    required this.imageUrl,
    required this.title,
    this.subtitle, // Update the parameter to make it optional
    required this.onTap,
  });
}
