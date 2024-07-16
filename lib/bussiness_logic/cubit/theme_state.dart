import 'package:flutter/material.dart';

enum ThemeModeType { light, dark }

@immutable
class ThemeState {
  final ThemeModeType themeModeType;

  const ThemeState(this.themeModeType);
}
