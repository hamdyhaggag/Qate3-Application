import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/Cegar/Bring/bring_cegar.dart';
import 'package:qate3_app/presentation/s/screens/Home/Cegar/Qate3/qate3_cegar.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';

class CegarScreen extends StatelessWidget {
  const CegarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'السجائر', screen1: Qate3Cegar(), screen2: BringCegar()));
  }
}
