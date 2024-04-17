import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/Children/qate3_children.dart';
import '../../custom_choise.dart';
import 'bring_children.dart';

class ChildrenScreen extends StatelessWidget {
  const ChildrenScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: ' مستلزمات الأطفال',
            screen1: Qate3Children(),
            screen2: BringChildren()));
  }
}
