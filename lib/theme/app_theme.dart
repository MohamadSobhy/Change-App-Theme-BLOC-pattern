import 'package:flutter/material.dart';

enum AppTheme {
  blueDark,
  blueLight,
  greenDark,
  greenLight,
}

final appThemesData = {
  AppTheme.blueDark: ThemeData(
    primaryColor: Colors.blue[700],
    brightness: Brightness.dark,
  ),
  AppTheme.blueLight: ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
  ),
  AppTheme.greenDark: ThemeData(
    primaryColor: Colors.green[700],
    brightness: Brightness.dark,
  ),
  AppTheme.greenLight: ThemeData(
    primaryColor: Colors.green,
    brightness: Brightness.light,
  ),
};
