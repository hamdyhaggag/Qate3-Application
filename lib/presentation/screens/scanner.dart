import 'package:flutter/material.dart';
import 'package:qate3_app/constants/custom_appbar.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const CustomAppBar(title: 'قارئ الباركود'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.update,
              size: screenWidth * 0.3,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            Text(
              '!نعتذر، ستتم إضافة هذة الميزة قريباً',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'جاري العمل على قاعدة البيانات',
              style:
                  TextStyle(fontSize: screenWidth * 0.04, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
