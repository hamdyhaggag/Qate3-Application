import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
      surface: Colors.white, primary: Colors.white, secondary: Colors.red),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'Cairo', color: Colors.black),
    bodyMedium: TextStyle(fontFamily: 'Cairo', color: Colors.black),
  ),
  fontFamily: 'Cairo',
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade800,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'Cairo', color: Colors.white),
    bodyMedium: TextStyle(fontFamily: 'Cairo', color: Colors.white),
  ),
  fontFamily: 'Cairo',
);
