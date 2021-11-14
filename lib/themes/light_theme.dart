import 'package:flutter/material.dart';

class LightTheme {
  ThemeData? lightTheme;

  LightTheme() {
    lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.lightGreen,
      appBarTheme: const AppBarTheme(
        color: Colors.lightGreen,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.lightGreen,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Color(0xff55b849), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.red, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        hintStyle: TextStyle(color: Colors.lightGreen),
        alignLabelWithHint: true,
        suffixStyle: TextStyle(color: Colors.lightGreen),
      ),
    );
  }

  get() {
    return lightTheme;
  }
}
