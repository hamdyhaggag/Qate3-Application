import 'package:flutter/material.dart';

import '../../custom_choise.dart';
import 'Bring/bring_restaurent.dart';
import 'Qate3/qate3_restaurent.dart';

class RestaurentScreeen extends StatelessWidget {
  const RestaurentScreeen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: const CustomChoice(
            title: 'المطاعم',
            screen1: Qate3Restaurent(),
            screen2: BringRestaurent()));
  }
}
