import 'package:flutter/material.dart';

import '../../custom_choise.dart';
import 'Bring/bring_benzen.dart';
import 'Qate3/qate3_benzen.dart';

class BenzenScreen extends StatelessWidget {
  const BenzenScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'الزيوت ومحطات البنزين',
            screen1: Qate3Benzen(),
            screen2: BringBenzen()));
  }
}
