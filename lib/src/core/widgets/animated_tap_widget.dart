import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/widgets/press_scale.dart';

class AnimatedTapWidget extends StatelessWidget {
  const AnimatedTapWidget({
    super.key,
    required this.child,
    this.onTap,
    this.enabled = true,
    this.pressedScale = 0.94,
    this.duration = const Duration(milliseconds: 110),
    this.curve = Curves.easeOutCubic,
    this.behavior = HitTestBehavior.opaque,
  });

  final Widget child;
  final VoidCallback? onTap;
  final bool enabled;
  final double pressedScale;
  final Duration duration;
  final Curve curve;
  final HitTestBehavior behavior;

  @override
  Widget build(BuildContext context) {
    final isInteractive = enabled && onTap != null;

    return PressScale(
      enabled: isInteractive,
      pressedScale: pressedScale,
      duration: duration,
      curve: curve,
      child: GestureDetector(
        onTap: isInteractive ? onTap : null,
        behavior: behavior,
        child: child,
      ),
    );
  }
}
