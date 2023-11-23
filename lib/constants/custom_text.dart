import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.title,
      {super.key, required TextAlign textAlign, required TextStyle style});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
