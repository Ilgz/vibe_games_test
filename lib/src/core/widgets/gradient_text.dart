import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(this.text, {super.key, required this.gradient});
  final Widget text;
  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(bounds);
      },
      child: text,
    );
  }
}
