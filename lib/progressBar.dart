import 'package:buybutton/constants.dart';
import 'package:buybutton/container.dart';
import 'package:flutter/material.dart';

class progressBar extends StatelessWidget {
  const progressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ClipOval(
      child: buttonContainer(
        color: containerClr,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}