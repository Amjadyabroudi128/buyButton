import 'package:buybutton/constants.dart';
import 'package:flutter/material.dart';

import 'buttonScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BuyButtonScreen(),
      theme: ThemeData(
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

      ),
    );
  }
}

