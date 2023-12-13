import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/Cegar/Bring/bring_bank.dart';
import 'package:qate3_app/presentation/s/screens/Home/Cegar/Qate3/qate3_bank.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'البنوك', screen1: Qate3Bank(), screen2: BringBank()));
  }
}
