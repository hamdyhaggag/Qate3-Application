import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/flight/Bring/bring_flight.dart';
import 'package:qate3_app/presentation/s/screens/Home/flight/Qate3/qate3_flight.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';

class FlightScreen extends StatelessWidget {
  const FlightScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'رحلات الطيران',
            screen1: Qate3Flight(),
            screen2: BringFlight()));
  }
}
