import 'package:flutter/material.dart';

class DarkTheme {
  ThemeData? darkTheme;

  DarkTheme() {
    darkTheme = ThemeData.light().copyWith(
      primaryColor: Colors.black,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
      ),
    );
  }

  get() {
    return darkTheme;
  }
}
