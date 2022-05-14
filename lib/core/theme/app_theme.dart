import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ThemeData _appTheme = ThemeData.light().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.black,
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
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
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ))
  );

  static ThemeData getThemeData() {
    return _appTheme;
  }
}