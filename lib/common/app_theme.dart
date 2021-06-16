import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final instance = AppTheme._();

  static const errorMessageColor = Colors.red;
  static const errorMessageStyle = TextStyle(
      fontSize: 13.0,
      color: errorMessageColor,
      height: 1.0,
      fontWeight: FontWeight.w300);

  ThemeData getTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      canvasColor: Colors.grey[100],
      bottomAppBarColor: Colors.grey[100],
    );
  }
}
