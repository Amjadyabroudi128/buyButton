import 'package:buybutton/constants.dart';
import 'package:buybutton/theme.dart';
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
      theme: ThemeApp.theme,
    );
  }
}

