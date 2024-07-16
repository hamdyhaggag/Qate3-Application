import 'package:flutter/material.dart';
import '../../custom_choise.dart';
import 'Bring/bring_cosmetics.dart';
import 'Qate3/qate3_cosmetics.dart';

class CosmeticsScreen extends StatelessWidget {
  const CosmeticsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: const CustomChoice(
            title: 'منتجات التجميل',
            screen1: Qate3Cosmetics(),
            screen2: BringCosmetics()));
  }
}
