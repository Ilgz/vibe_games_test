import 'package:flutter/material.dart';

class DesignScaledStage extends StatelessWidget {
  const DesignScaledStage({
    super.key,
    required this.child,
    this.designSize = const Size(2320, 1080),
    this.fit = BoxFit.cover,
  });

  final Widget child;
  final Size designSize;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FittedBox(
        fit: fit,
        child: SizedBox.fromSize(size: designSize, child: child),
      ),
    );
  }
}
