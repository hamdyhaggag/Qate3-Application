import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/Home/Devices/Bring/bring_devices.dart';
import 'package:qate3_app/presentation/s/screens/Home/Devices/Qate3/qate3_devices.dart';
import 'package:qate3_app/presentation/s/screens/custom_choise.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: CustomChoice(
            title: 'الأجهزة الكهربائية',
            screen1: Qate3Devices(),
            screen2: BringDevices()));
  }
}
