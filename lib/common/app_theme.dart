import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final instance = AppTheme._();

  ThemeData getTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      canvasColor: Colors.grey[100],
      bottomAppBarColor: Colors.grey[100],
    );
  }
}
