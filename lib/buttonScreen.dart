import 'dart:async';
import 'package:buybutton/constants.dart';
import 'package:buybutton/container.dart';
import 'package:buybutton/progressBar.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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
    String btnTitle = "Buy Now";
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
                progressBar(),
                Icon(
                  icons[currentIconIndex],
                  color: iconColors,
                ),
              ],
            )
                : isSuccess
                ? const Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myText(),
                    SizedBox(height: 6,),
                    ClipOval(
                      child: buttonContainer(
                    color: containerClr,
                    child: check,
                      ),
                    ),
                  ],
                )
                : ElevatedButton(
              onPressed: handleBuy,
              child: Text(btnTitle, style: button,),
            ),
          ),
        ),
      ),
    );
  }
}

class myText extends StatelessWidget {
  const myText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: false,
      isRepeatingAnimation: false,
      animatedTexts: [
        TyperAnimatedText('Thanks For shopping here', textStyle: animated),
      ],
    );
  }
}
