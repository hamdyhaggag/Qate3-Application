import 'package:flutter/material.dart';
import 'package:qate3_app/constants/item_model.dart';

class CustomCategoryItem extends StatelessWidget {
  final String imageUrl1;
  final String title1;
  final String subtitle1;

  const CustomCategoryItem({
    Key? key,
    required this.imageUrl1,
    required this.title1,
    required this.subtitle1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
      child: ItemModel(
        imageUrl: imageUrl1,
        title: title1,
        subtitle: subtitle1,
      ),
    );
  }
}
