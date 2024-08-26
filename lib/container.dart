import 'package:flutter/material.dart';

class buttonContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final Color? clr;
  const buttonContainer({super.key, this.height, this.width, this.child, this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: clr,
      child: child,
    );
  }
}
