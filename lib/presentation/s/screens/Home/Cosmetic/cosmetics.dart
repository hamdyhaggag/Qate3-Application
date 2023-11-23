import 'package:flutter/material.dart';

import '../../../../../constants/bring_model.dart';
import '../../custom_choise.dart';
import 'Bring/bring_cosmetics.dart';
import 'Qate3/qate3_cosmetics.dart';

class CosmeticsScreen extends StatelessWidget {
  const CosmeticsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'منتجات التجميل',
            screen1: Qate3Cosmetics(),
            screen2: BringCosmetics()));
  }
}
