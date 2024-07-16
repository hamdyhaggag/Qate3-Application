import 'package:flutter/material.dart';

import '../../custom_choise.dart';
import 'Bring/bring_cars.dart';
import 'Qate3/qate3_cars.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: const  CustomChoice(
            title: 'السيارات', screen1: Qate3Cars(), screen2: BringCars()));
  }
}
