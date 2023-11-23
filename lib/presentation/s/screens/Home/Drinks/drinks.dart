import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:qate3_app/constants/custom_category_item.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Bring/bring_coffee.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Bring/bring_milk.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Bring/bring_nescafe.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Bring/bring_soda.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Bring/bring_tea.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Bring/bring_water.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_coffee.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_milk.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_nescafe.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_soda.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_tea.dart';
import 'package:qate3_app/presentation/s/screens/Home/Drinks/Qate3/qate3_water.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';
import 'package:qate3_app/presentation/s/widgets.dart';

class DrinksScreen extends StatelessWidget {
  const DrinksScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/home/9.jpg',
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
        imageUrl: 'assets/home/10.jpg',
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
        imageUrl: 'assets/home/11.jpg',
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
        imageUrl: 'assets/home/12.jpg',
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
        imageUrl: 'assets/home/13.jpg',
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
        imageUrl: 'assets/home/14.jpg',
        title: ' الشاي',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'الشاي',
              screen1: Qate3Tea(),
              screen2: BringTea(),
            )),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
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
