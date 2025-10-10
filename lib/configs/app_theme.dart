import 'package:flutter/material.dart';

class AppTheme {
  static final primary = Color.fromARGB(255, 255, 0, 80);
  static final secondary = Color.fromARGB(255, 0, 242, 234);
  static final black = Colors.black;

  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColorDark: Colors.black,
    scaffoldBackgroundColor: Colors.white,
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColorDark: Colors.white,
    scaffoldBackgroundColor: Colors.black,
  );
}
