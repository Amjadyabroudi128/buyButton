import 'package:flutter/material.dart';

class buttonContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final Color? color;
  const buttonContainer({super.key, this.height, this.width, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      color: color,
      child: child,
    );
  }
}
