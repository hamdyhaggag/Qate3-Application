import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/restaurent/Bring/bring_restaurent.dart';
import 'package:qate3_app/presentation/s/screens/Home/restaurent/Qate3/qate3_restaurent.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';


class RestaurentScreeen extends StatelessWidget {
  const RestaurentScreeen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'المطاعم',
            screen1: Qate3Restaurent(),
            screen2: BringRestaurent()));
  }
}
