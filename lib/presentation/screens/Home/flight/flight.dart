import 'package:flutter/material.dart';

import '../../custom_choise.dart';
import 'Bring/bring_flight.dart';
import 'Qate3/qate3_flight.dart';

class FlightScreen extends StatelessWidget {
  const FlightScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: const CustomChoice(
            title: 'رحلات الطيران',
            screen1: Qate3Flight(),
            screen2: BringFlight()));
  }
}
