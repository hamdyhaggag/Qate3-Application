import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const Qate3(),
    ),
  );
}

class Qate3 extends StatelessWidget {
  const Qate3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      home: Builder(builder: (context) {
        return const SplashScreen();
      }),
    );
  }
}
