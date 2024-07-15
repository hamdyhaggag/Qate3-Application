import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/screens/Home/Medicine/qate3_medicine.dart';
import '../../custom_choise.dart';
import 'bring_medicine.dart';

class MedicineScreen extends StatelessWidget {
  const MedicineScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: ' شركات الأدوية',
            screen1: Qate3Medicine(),
            screen2: BringMedicine()));
  }
}
