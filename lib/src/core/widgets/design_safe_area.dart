import 'dart:math' as math;

import 'package:flutter/material.dart';

class DesignSafeArea extends StatelessWidget {
  const DesignSafeArea({
    super.key,
    required this.builder,
    this.designSize = const Size(2320, 1080),
  });

  final Widget Function(BuildContext context, EdgeInsets safeInsets) builder;
  final Size designSize;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final viewPadding = MediaQuery.viewPaddingOf(context);
    final scale = math.max(
      screenSize.width / designSize.width,
      screenSize.height / designSize.height,
    );

    final safeScale = scale <= 0 ? 1.0 : scale;
    return builder(
      context,
      EdgeInsets.only(
        left: viewPadding.left / safeScale,
        right: viewPadding.right / safeScale,
      ),
    );
  }
}
