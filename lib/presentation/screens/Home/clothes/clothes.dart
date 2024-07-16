import 'package:flutter/material.dart';

import '../../custom_choise.dart';
import 'Bring/bring_clothes.dart';
import 'Qate3/qate3_clothes.dart';

class ClothesScreen extends StatelessWidget {
  const ClothesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: const CustomChoice(
            title: 'الملابس',
            screen1: Qate3Clothes(),
            screen2: BringClothes()));
  }
}
