import 'package:flutter/material.dart';
import 'color.dart';

class CustomGradient extends StatefulWidget {
  final Widget? child;

  const CustomGradient({super.key, this.child});

  @override
  State<CustomGradient> createState() => _CustomGradientState();
}

class _CustomGradientState extends State<CustomGradient> {
  @override
  Widget build(BuildContext context) {
    // to show gradient color
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (rect) => const LinearGradient(
        colors: [appColor, appColor2],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(rect),
      child: widget.child,
    );
  }
}
