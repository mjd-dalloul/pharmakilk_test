import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ThemeData _appTheme = ThemeData.light().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        fixedSize: MaterialStateProperty.all<Size>(
          const Size(double.maxFinite, 51),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: MaterialStateProperty.all<double>(0.0),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 12.0),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      alignLabelWithHint: true,
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );

  static ThemeData getThemeData() {
    return _appTheme;
  }
}
