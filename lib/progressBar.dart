import 'package:buybutton/constants.dart';
import 'package:buybutton/container.dart';
import 'package:flutter/material.dart';

class progressBar extends StatelessWidget {
  const progressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  ClipOval(
      child: buttonContainer(
        color: containerClr,
        child: Padding(
          padding: containerPadding,
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}