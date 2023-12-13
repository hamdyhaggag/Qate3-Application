import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/Benzen/Bring/bring_cegar.dart';
import 'package:qate3_app/presentation/s/screens/Home/Benzen/Qate3/qate3_cegar.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';

class FlightScreen extends StatelessWidget {
  const FlightScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'الطيران', screen1: Qate3Flight(), screen2: BringFlight()));
  }
}
