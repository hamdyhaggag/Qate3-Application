import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';
import 'package:qate3_app/constants/custom_category_item.dart';

import '../../../widgets.dart';
import '../../custom_choise.dart';
import 'Bring/bring_bescauit.dart';
import 'Bring/bring_chipsy.dart';
import 'Bring/bring_chocolate.dart';
import 'Bring/bring_icecream.dart';
import 'Bring/bring_indomi.dart';
import 'Bring/bring_lban.dart';
import 'Bring/bring_zbady.dart';
import 'Qate3/Qate3_indomi.dart';
import 'Qate3/qate3_bescauit.dart';
import 'Qate3/qate3_chipsy.dart';
import 'Qate3/qate3_chocolate.dart';
import 'Qate3/qate3_icecream.dart';
import 'Qate3/qate3_lban.dart';
import 'Qate3/qate3_zbady.dart';

class SnacksScreeen extends StatelessWidget {
  const SnacksScreeen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<CategoryItemData> categoryItems = [
      CategoryItemData(
        imageUrl: 'assets/home/15.png',
        title: 'شيبسي',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'شيبسي',
              screen1: Qate3Chipsy(),
              screen2: BringChipsy(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/16.png',
        title: 'لبان',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'لبان',
              screen1: Qate3lban(),
              screen2: BringLban(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/53.png',
        title: 'نودلز',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'إندومي',
              screen1: Qate3Indomi(),
              screen2: BringIndomi(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/17.png',
        title: 'شيكولاته',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'شيكولاته',
              screen1: Qate3Chocolate(),
              screen2: BringChocolate(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/18.png',
        title: ' البسكويت',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'البسكويت',
              screen1: Qate3Bescauit(),
              screen2: BringBescauit(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/19.png',
        title: ' زبادي',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'زبادي',
              screen1: Qate3Zbady(),
              screen2: BringZbady(),
            )),
      ),
      CategoryItemData(
        imageUrl: 'assets/home/20.png',
        title: 'أيس كريم',
        onTap: () => navigateTo(
            context,
            const CustomChoice(
              title: 'أيس كريم',
              screen1: Qate3Icecream(),
              screen2: BringIcecream(),
            )),
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const CustomAppBar(title: 'قسم السناكس', isHome: false),
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