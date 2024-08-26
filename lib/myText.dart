import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buybutton/constants.dart';
import 'package:flutter/material.dart';

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
