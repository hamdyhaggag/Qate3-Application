import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:qate3_app/constants/custom_category_item.dart';
import '../../../widgets.dart';
import '../../custom_choise.dart';
import 'Bring/bring_coffee.dart';
import 'Bring/bring_juice.dart';
import 'Bring/bring_milk.dart';
import 'Bring/bring_nescafe.dart';
import 'Bring/bring_soda.dart';
import 'Bring/bring_tea.dart';
import 'Bring/bring_water.dart';
import 'Qate3/qate3_coffee.dart';
import 'Qate3/qate3_juice.dart';
import 'Qate3/qate3_milk.dart';
import 'Qate3/qate3_nescafe.dart';
import 'Qate3/qate3_soda.dart';
import 'Qate3/qate3_tea.dart';
import 'Qate3/qate3_water.dart';

class DrinksScreen extends StatelessWidget {
  const DrinksScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/home/9.png',
        title: 'المياة',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'المياة',
              screen1: Qate3Water(),
              screen2: BringWater(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/10.png',
        title: 'المشروبات الغازية',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'المشروبات الغازية',
              screen1: Qate3Soda(),
              screen2: BringSoda(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/11.png',
        title: 'الألبان',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'الألبان',
              screen1: Qate3Milk(),
              screen2: BringMilk(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/12.png',
        title: ' القهوة',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'القهوة',
              screen1: Qate3Coffee(),
              screen2: BringCoffee(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/13.png',
        title: ' النسكافية',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'النسكافية',
              screen1: Qate3Nescafe(),
              screen2: BringNescafe(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/14.png',
        title: ' الشاي',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'الشاي',
              screen1: Qate3Tea(),
              screen2: BringTea(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/31.png',
        title: ' العصائر',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'العصائر',
              screen1: Qate3Juice(),
              screen2: BringJuice(),
            )),
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CustomAppBar(title: 'قسم المشروبات', isHome: false),
      body: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.72,
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
