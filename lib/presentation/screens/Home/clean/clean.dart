import 'package:flutter/material.dart';

import '../../custom_choise.dart';
import 'Bring/bring_clean.dart';
import 'Qate3/qate3_clean.dart';

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
