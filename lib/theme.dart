import 'package:buybutton/constants.dart';
import 'package:flutter/material.dart';

class ThemeApp {

  static final theme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: yellow,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: EdgeInsets.symmetric(
            horizontal: 24.0, vertical: 12.0),
      ),
    ),
  );
 }