import 'package:flutter/material.dart';

class PressScale extends StatefulWidget {
  const PressScale({
    super.key,
    required this.child,
    this.enabled = true,
    this.pressedScale = 0.94,
    this.duration = const Duration(milliseconds: 110),
    this.curve = Curves.easeOutCubic,
  });

  final Widget child;
  final bool enabled;
  final double pressedScale;
  final Duration duration;
  final Curve curve;

  @override
  State<PressScale> createState() => _PressScaleState();
}

class _PressScaleState extends State<PressScale> {
  bool _pressed = false;

  @override
  void didUpdateWidget(covariant PressScale oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (!widget.enabled && _pressed) {
      _pressed = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: widget.enabled ? (_) => _setPressed(true) : null,
      onPointerUp: widget.enabled ? (_) => _setPressed(false) : null,
      onPointerCancel: widget.enabled ? (_) => _setPressed(false) : null,
      child: AnimatedScale(
        scale: _pressed ? widget.pressedScale : 1,
        duration: widget.duration,
        curve: widget.curve,
        child: widget.child,
      ),
    );
  }

  void _setPressed(bool pressed) {
    if (_pressed == pressed) {
      return;
    }

    setState(() {
      _pressed = pressed;
    });
  }
}
