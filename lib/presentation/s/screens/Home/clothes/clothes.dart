import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/clothes/Bring/bring_clothes.dart';
import 'package:qate3_app/presentation/s/screens/Home/clothes/Qate3/qate3_clothes.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';

class ClothesScreen extends StatelessWidget {
  const ClothesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomChoice(
            title: 'الملابس',
            screen1: Qate3Clothes(),
            screen2: BringClothes()));
  }
}
