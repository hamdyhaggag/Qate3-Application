import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/clean/Bring/bring_clean.dart';
import 'package:qate3_app/presentation/s/screens/Home/clean/Qate3/qate3_clean.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';

class CleanScreen extends StatelessWidget {
  const CleanScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'المنظفات', screen1: Qate3Clean(), screen2: BringClean()));
  }
}
