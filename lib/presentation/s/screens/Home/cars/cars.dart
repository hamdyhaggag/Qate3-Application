import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/cars/Bring/bring_cars.dart';
import 'package:qate3_app/presentation/s/screens/Home/cars/Qate3/qate3_cars.dart';

import 'package:qate3_app/presentation/s/screens/custom_choise.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'السيارات', screen1: Qate3Cars(), screen2: BringCars()));
  }
}
