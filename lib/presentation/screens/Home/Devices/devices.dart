import 'package:flutter/material.dart';

import '../../custom_choise.dart';
import 'Bring/bring_devices.dart';
import 'Qate3/qate3_devices.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: const CustomChoice(
            title: 'الأجهزة الكهربائية',
            screen1: Qate3Devices(),
            screen2: BringDevices()));
  }
}
