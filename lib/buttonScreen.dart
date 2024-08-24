import 'dart:async';

import 'package:buybutton/constants.dart';
import 'package:flutter/material.dart';

class BuyButtonScreen extends StatefulWidget {
  @override
  _BuyButtonScreenState createState() => _BuyButtonScreenState();
}

class _BuyButtonScreenState extends State<BuyButtonScreen> {
  bool isLoading = false;
  bool isSuccess = false;
  int currentIconIndex = 0;
  late Timer iconTimer;
  final List<IconData> icons = [
    bag,
    card,
    cart
  ];

  @override
  void dispose() {
    iconTimer.cancel();
    super.dispose();
  }

  void handleBuy() {
    setState(() {
      isLoading = true;
      isSuccess = false;
      currentIconIndex = 0; // Reset icon index
    });

    // Start the timer to change the icon every second
    iconTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        currentIconIndex = (currentIconIndex + 1) % icons.length;
      });
    });

    // Simulate a delay of 3 seconds
    Timer(Duration(seconds: 3), () {
      iconTimer.cancel();
      setState(() {
        isLoading = false;
        isSuccess = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: GestureDetector(
          onTap: handleBuy,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: isLoading
                ? Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.black,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(255, 202, 156, 19),
                        ),
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                ),
                Icon(
                  icons[currentIconIndex],
                  color: Colors.white,
                  size: 30,
                ),
              ],
            )
                : isSuccess
                ? ClipOval(
              child: Container(
                width: 60,
                height: 60,
                color: Colors.black,
                child: check,
              ),
            )
                : ElevatedButton(
              onPressed: handleBuy,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0),
                textStyle: TextStyle(fontSize: 18, color: Colors.red),
              ),
              child: const Text('Buy Now', style: TextStyle(color: Color.fromARGB(255, 192, 174, 21)),),
            ),
          ),
        ),
      ),
    );
  }
}