import 'package:flutter/material.dart';

class LightTheme {
  ThemeData? lightTheme;

  LightTheme() {
    lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.lightGreenAccent,
      appBarTheme: const AppBarTheme(
        color: Colors.lightGreen,
      ),
    );
  }

  get() {
    return lightTheme;
  }
}
