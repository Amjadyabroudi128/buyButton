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
      title: 'Buy Button Example',
      home: BuyButtonScreen(),
    );
  }
}

