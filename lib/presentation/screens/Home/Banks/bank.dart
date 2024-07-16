import 'package:flutter/material.dart';

import '../../custom_choise.dart';
import 'Bring/bring_bank.dart';
import 'Qate3/qate3_bank.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body:const CustomChoice(
            title: 'البنوك', screen1: Qate3Bank(), screen2: BringBank()));
  }
}
